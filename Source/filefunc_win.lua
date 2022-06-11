local cache_modtimes = {} -- filepath => unix_timestamp


require("libs/windows_constants")

local ffi = require("ffi")
local shell32 = ffi.load("Shell32") -- SHGetFolderPathW
local psapi_loaded, psapi = pcall(ffi.load, "Psapi") -- EnumProcesses, GetModule*
if not psapi_loaded then
	autodetect_vvvvvv_available = false
end
ffi.cdef((love.filesystem.read("libs/universal.h")))
ffi.cdef((love.filesystem.read("libs/windows_types.h")))
ffi.cdef((love.filesystem.read("libs/windows_main.h")))


buffer_filedata = ffi.new("WIN32_FIND_DATAW")
buffer_st_utc = ffi.new("SYSTEMTIME")
buffer_st_loc = ffi.new("SYSTEMTIME")
buffer_filetime = ffi.new("FILETIME")
buffer_path_utf8 = ffi.new("CHAR[?]", MAX_PATH*4)
buffer_path_utf16 = ffi.new("WCHAR[?]", MAX_PATH)
buffer_formatmessage_utf16 = ffi.new("WCHAR[?]", 512)
buffer_formatmessage_utf8 = ffi.new("CHAR[?]", 512)



function path_utf8_to_utf16(lua_str)
	ffi.C.MultiByteToWideChar(CP_UTF8, 0, lua_str, -1, buffer_path_utf16, MAX_PATH)
	return buffer_path_utf16
end

function path_utf16_to_utf8(wstr)
	ffi.C.WideCharToMultiByte(CP_UTF8, 0, wstr, -1, buffer_path_utf8, MAX_PATH*4, nil, nil)
	return ffi.string(buffer_path_utf8)
end

function file_attributes_directory(dwAttributes)
	return bit(dwAttributes, FILE_ATTRIBUTE_DIRECTORY)
end

function handle_is_invalid(handle)
	return tonumber(ffi.cast("intptr_t", handle)) == INVALID_HANDLE_VALUE
end

function format_last_win_error()
	ffi.C.FormatMessageW(
		FORMAT_MESSAGE_FROM_SYSTEM + FORMAT_MESSAGE_IGNORE_INSERTS,
		nil, ffi.C.GetLastError(), 0, buffer_formatmessage_utf16, 512, nil
	)
	ffi.C.WideCharToMultiByte(
		CP_UTF8, 0, buffer_formatmessage_utf16, -1, buffer_formatmessage_utf8, 512, nil, nil
	)
	return ffi.string(buffer_formatmessage_utf8):gsub("\r", "")
end


local len_text_userprofile = ("USERPROFILE"):len()+1
local buffer_text_userprofile_utf16 = ffi.new("WCHAR[?]", len_text_userprofile)
ffi.C.MultiByteToWideChar(
	CP_UTF8, 0, "USERPROFILE", -1, buffer_text_userprofile_utf16, len_text_userprofile
)
ffi.C.GetEnvironmentVariableW(buffer_text_userprofile_utf16, buffer_path_utf16, MAX_PATH)
userprofile = path_utf16_to_utf8(buffer_path_utf16)



function listlevelfiles(directory)
	local t = {[""] = {}}

	-- We really can't have slashes here instead of backslashes, this is Windows.
	directory = directory:gsub("/", "\\")
	-- We can't have a trailing backslash either, or our matching system will blow up. This comes in the form of a double backslash.
	directory = directory:gsub("\\\\", "\\")

	local search_handle = ffi.C.FindFirstFileW(path_utf8_to_utf16(directory .. "\\*"), buffer_filedata)
	if handle_is_invalid(search_handle) then
		return t
	end
	local currentdir = ""
	local prefix = ""
	local directory_insertion_point = 1
	local subdirectories_left = {}
	local isdir
	local current_name
	local current_data
	local files_left = true
	while files_left do
		isdir = file_attributes_directory(buffer_filedata.dwFileAttributes)
		current_name = path_utf16_to_utf8(buffer_filedata.cFileName)
		if current_name ~= "." and current_name ~= ".." then
			if isdir then
				table.insert(subdirectories_left, prefix .. current_name)
			end

			if isdir or current_name:sub(-7, -1) == ".vvvvvv" then
				ffi.C.FileTimeToSystemTime(buffer_filedata.ftLastWriteTime, buffer_st_utc)
				ffi.C.SystemTimeToTzSpecificLocalTime(nil, buffer_st_utc, buffer_st_loc)

				current_data = {
					name = current_name,
					isdir = isdir,
					result_shown = true,
					bu_lastmodified = 0,
					bu_overwritten = 0,
					lastmodified = {
						buffer_st_loc.wYear, buffer_st_loc.wMonth, buffer_st_loc.wDay,
						buffer_st_loc.wHour, buffer_st_loc.wMinute, buffer_st_loc.wSecond
					},
				}

				if isdir then
					-- Group directories first
					table.insert(t[currentdir], directory_insertion_point, current_data)
					directory_insertion_point = directory_insertion_point + 1
				else
					table.insert(t[currentdir], current_data)
				end
			end
		end
		files_left = ffi.C.FindNextFileW(search_handle, buffer_filedata)
		if not files_left and #subdirectories_left > 0 then
			ffi.C.FindClose(search_handle)

			currentdir = table.remove(subdirectories_left, 1)
			prefix = currentdir .. "\\"
			directory_insertion_point = 1

			t[currentdir] = {}

			search_handle = ffi.C.FindFirstFileW(
				path_utf8_to_utf16(directory .. "\\" .. prefix .. "*"),
				buffer_filedata
			)

			files_left = true
		end
	end
	ffi.C.FindClose(search_handle)
	return t
end

function listfiles_generic(directory, filter, show_hidden)
	-- If successful, returns: true, files.
	-- If not, returns: false, {}, message.
	local files = {}

	if directory == "" then
		-- Change of plans, we're above C: or whatever, list all the drives.
		local drivebits = ffi.C.GetLogicalDrives()

		for d = 0, 25 do
			if bit(drivebits, 2^d) then
				table.insert(files,
					{
						name = string.char(0x41+d) .. ":",
						isdir = true,
						lastmodified = 0,
					}
				)
			end
		end
		return true, files
	end

	local search_handle = ffi.C.FindFirstFileW(path_utf8_to_utf16(directory .. "\\*"), buffer_filedata)
	if handle_is_invalid(search_handle) then
		return false, {}, format_last_win_error()
	end
	local current_name
	local files_left = true
	while files_left do
		local isdir = file_attributes_directory(buffer_filedata.dwFileAttributes)
		current_name = path_utf16_to_utf8(buffer_filedata.cFileName)
		if current_name ~= "." and current_name ~= ".."
		and (isdir or filter == "" or current_name:sub(-filter:len(), -1) == filter)
		and not bit(buffer_filedata.dwFileAttributes, FILE_ATTRIBUTE_SYSTEM)
		and (show_hidden or not bit(buffer_filedata.dwFileAttributes, FILE_ATTRIBUTE_HIDDEN)) then
			ffi.C.FileTimeToSystemTime(buffer_filedata.ftLastWriteTime, buffer_st_utc)
			ffi.C.SystemTimeToTzSpecificLocalTime(nil, buffer_st_utc, buffer_st_loc)

			table.insert(files,
				{
					name = current_name,
					isdir = isdir,
					lastmodified = {
						buffer_st_loc.wYear, buffer_st_loc.wMonth, buffer_st_loc.wDay,
						buffer_st_loc.wHour, buffer_st_loc.wMinute, buffer_st_loc.wSecond
					},
				}
			)
		end
		files_left = ffi.C.FindNextFileW(search_handle, buffer_filedata)
	end
	ffi.C.FindClose(search_handle)

	sort_files(files)
	return true, files
end

function get_parent_path(directory)
	-- "" counts as the list of drives.
	local last_dirsep = directory:reverse():find("\\", 1, true)
	if last_dirsep == nil then
		return "", directory
	end
	return directory:sub(1, -last_dirsep-1), directory:sub(-last_dirsep, -1):sub(2, -1)
end

function get_child_path(directory, child)
	if directory == "" then
		return child
	end
	return directory .. "\\" .. child
end

function get_root_dir_display()
	return L.DRIVES
end

function filepath_from_dialog(folder, name)
	-- Returns the full path, and the final filename
	local last_dirsep = name:reverse():find("\\", 1, true)
	local filename
	if last_dirsep == nil then
		filename = name
	else
		filename = name:sub(-last_dirsep+1, -1)
	end
	if name:match("^[A-Z]:\\.*") ~= nil then
		return name, filename
	end
	return folder .. "\\" .. name, filename
end

function setvvvvvvpaths()
	-- Sets the path variables to what they _should_ be, even if they don't exist.
	-- That way we can say "check {levelsfolder} exists and try again"

	shell32.SHGetFolderPathW(nil, CSIDL_PERSONAL, nil, SHGFP_TYPE_CURRENT, buffer_path_utf16);
	vvvvvvfolder_expected = path_utf16_to_utf8(buffer_path_utf16) .. "\\VVVVVV"

	if s.customvvvvvvdir == "" then
		vvvvvvfolder = vvvvvvfolder_expected
	else
		-- The user has supplied a custom directory.
		vvvvvvfolder = s.customvvvvvvdir
	end

	levelsfolder = vvvvvvfolder .. "\\levels"
	graphicsfolder = vvvvvvfolder .. "\\graphics"
	soundsfolder = vvvvvvfolder .. "\\sounds"
end

function directory_exists(where, what)
	local dwAttributes = ffi.C.GetFileAttributesW(path_utf8_to_utf16(where .. "\\" .. what))

	return dwAttributes ~= INVALID_FILE_ATTRIBUTES and file_attributes_directory(dwAttributes)
end

function file_exists(path)
	local dwAttributes = ffi.C.GetFileAttributesW(path_utf8_to_utf16(path))

	return dwAttributes ~= INVALID_FILE_ATTRIBUTES and not file_attributes_directory(dwAttributes)
end

function readlevelfile(path)
	-- returns success, contents

	local file_handle = ffi.C.CreateFileW(
		path_utf8_to_utf16(path),
		GENERIC_READ,
		FILE_SHARE_READ,
		nil,
		OPEN_EXISTING,
		FILE_ATTRIBUTE_NORMAL,
		nil
	)
	if handle_is_invalid(file_handle) then
		return false, format_last_win_error()
	end

	-- We may need this later, don't unnecessarily create two file handles for this
	ffi.C.GetFileTime(file_handle, nil, nil, buffer_filetime)
	local unix_time = (
		buffer_filetime.dwHighDateTime*2^32 + buffer_filetime.dwLowDateTime
	) / 10000000 - 11644473600
	cache_modtimes[path] = unix_time

	local dwFilesize = ffi.C.GetFileSize(file_handle, nil)
	if dwFilesize == INVALID_FILE_SIZE then
		-- They recommend GetFileSizeEx, but no way you'd want 4 GB VVVVVV levels
		ffi.C.CloseHandle(file_handle)
		return false, L.INVALIDFILESIZE
	end

	local buffer_contents = ffi.new("char[?]", dwFilesize+1)
	local lpNumberOfBytesRead = ffi.new("DWORD[1]")
	if not ffi.C.ReadFile(file_handle, buffer_contents, dwFilesize, lpNumberOfBytesRead, nil) then
		-- Reading failed.
		ffi.C.CloseHandle(file_handle)
		return false, format_last_win_error()
	end

	ffi.C.CloseHandle(file_handle)

	local ficontents = ffi.string(buffer_contents, lpNumberOfBytesRead[0])

	return true, ficontents
end

function writelevelfile(path, contents)
	-- returns success, (if not) error message
	if path:sub(3):match(".*[:%*%?\"<>|].*") ~= nil then
		return false, L.INVALIDFILENAME_WIN
	end

	local file_handle = ffi.C.CreateFileW(
		path_utf8_to_utf16(path),
		GENERIC_WRITE,
		0,
		nil,
		CREATE_ALWAYS,
		FILE_ATTRIBUTE_NORMAL,
		nil
	)
	if handle_is_invalid(file_handle) then
		return false, format_last_win_error()
	end

	local lpNumberOfBytesWritten = ffi.new("DWORD[1]")
	if not ffi.C.WriteFile(file_handle, contents, contents:len(), lpNumberOfBytesWritten, nil) then
		-- Writing failed.
		ffi.C.CloseHandle(file_handle)
		return false, format_last_win_error()
	end

	ffi.C.FlushFileBuffers(file_handle)
	ffi.C.CloseHandle(file_handle)

	return true, nil
end

function getmodtime(fullpath)
	return cache_modtimes[fullpath]
end

function readfile(filename)
	-- returns success, contents

	local file_handle = ffi.C.CreateFileW(
		path_utf8_to_utf16(filename),
		GENERIC_READ,
		FILE_SHARE_READ,
		nil,
		OPEN_EXISTING,
		FILE_ATTRIBUTE_NORMAL,
		nil
	)
	if handle_is_invalid(file_handle) then
		return false, format_last_win_error()
	end

	local dwFilesize = ffi.C.GetFileSize(file_handle, nil)
	if dwFilesize == INVALID_FILE_SIZE then
		ffi.C.CloseHandle(file_handle)
		return false, L.INVALIDFILESIZE
	end

	local buffer_contents = ffi.new("char[?]", dwFilesize+1)
	local lpNumberOfBytesRead = ffi.new("DWORD[1]")
	if not ffi.C.ReadFile(file_handle, buffer_contents, dwFilesize, lpNumberOfBytesRead, nil) then
		-- Reading failed.
		ffi.C.CloseHandle(file_handle)
		return false, format_last_win_error()
	end

	ffi.C.CloseHandle(file_handle)

	local ficontents = ffi.string(buffer_contents, lpNumberOfBytesRead[0])

	return true, ficontents
end

-- multiwritefile_* are meant for writing to a file multiple times in a row (handy for music files).
-- os_fh can mean lua's file object, a Windows HANDLE, or even a filename for love.filesystem,
-- dependent on OS.
function multiwritefile_open(filename)
	-- returns true, os_fh / false, error message
	if filename:sub(3):match(".*[:%*%?\"<>|].*") ~= nil then
		return false, L.INVALIDFILENAME_WIN
	end

	local os_fh = ffi.C.CreateFileW(
		path_utf8_to_utf16(filename),
		GENERIC_WRITE,
		0,
		nil,
		CREATE_ALWAYS,
		FILE_ATTRIBUTE_NORMAL,
		nil
	)
	if handle_is_invalid(os_fh) then
		return false, format_last_win_error()
	end
	return true, os_fh
end

function multiwritefile_write(os_fh, data)
	-- returns success, (if not) error message
	local lpNumberOfBytesWritten = ffi.new("DWORD[1]")
	if not ffi.C.WriteFile(os_fh, data, data:len(), lpNumberOfBytesWritten, nil) then
		-- Writing failed.
		ffi.C.CloseHandle(os_fh)
		return false, format_last_win_error()
	end
	return true
end

function multiwritefile_close(os_fh)
	ffi.C.FlushFileBuffers(os_fh)
	ffi.C.CloseHandle(os_fh)
end

function find_vvvvvv_exe()
	-- returns `true, path` if success, `false, errmsg` if failure

	local processes_max = 8192
	local processes
	local processes_bytes_used = ffi.new("DWORD[1]")
	local fits
	repeat
		processes = ffi.new("DWORD[?]", processes_max)

		if not psapi.EnumProcesses(processes, processes_max * 4, processes_bytes_used) then
			return false, L.FIND_V_EXE_ERROR
		end

		fits = processes_bytes_used[0] < processes_max * 4
		if not fits then
			processes_max = processes_max * 2
		end
	until fits

	local n_returned = processes_bytes_used[0] / 4

	-- Default for !success: we simply didn't find it
	local errmsg = L.FIND_V_EXE_NOTFOUND

	local path
	local n_processes = 0
	local success = false

	for i = 0, n_returned do
		local hProcess = ffi.C.OpenProcess(
			PROCESS_QUERY_INFORMATION + PROCESS_VM_READ,
			false,
			processes[i]
		);

		if hProcess ~= nil then
			local process_name_utf16 = ffi.new("WCHAR[?]", MAX_PATH)
			local process_path_utf16 = ffi.new("WCHAR[?]", MAX_PATH)

			if psapi.GetModuleBaseNameW(hProcess, nil, process_name_utf16, MAX_PATH)
			and path_utf16_to_utf8(process_name_utf16):lower() == "vvvvvv.exe" then
				if not psapi.GetModuleFileNameExW(hProcess, nil, process_path_utf16, MAX_PATH) then
					-- Okay, maybe *this* VVVVVV causes a failing GetModuleFileNameExW...
					-- Maybe there's still another where it doesn't fail.
					-- Either way it's no longer a "not found".
					errmsg = L.FIND_V_EXE_FOUNDERROR
				end

				n_processes = n_processes + 1
				local process_path_utf8 = path_utf16_to_utf8(process_path_utf16)

				-- If multiple VVVVVVs are running, we'll allow it if the executable is the same
				if n_processes > 1 and process_path_utf8 ~= path then
					errmsg = L.FIND_V_EXE_MULTI
					success = false
					ffi.C.CloseHandle(hProcess)
					break
				end

				path = process_path_utf8
				success = true
			end

			ffi.C.CloseHandle(hProcess)
		end
	end

	if not success then
		return false, errmsg
	end

	return true, path
end

function start_process(path, args_table, timeout, retain_stdin, retain_stdout, retain_stderr)
	-- Start a child process and get its "processinfo" (an OS-dependent pid or handle).
	-- On success, returns true, processinfo, stdin_write_end, stdout_read_end, stderr_read_end
	-- On failure, returns false, err
	-- The timeout is an integer amount of seconds that the process can take in total, 0 for no timeout.
	-- You can choose which stdio pipe handles to retain, unretained handles are nil (retrieved pipes
	-- will need to be closed later). You probably SHOULD retain stdout, or VVVVVV may get SIGPIPE'd.
	-- Note that this function will return true - indicating success - even if starting VVVVVV is going
	-- to fail. This will become apparent when calling await_process, because the process exits with
	-- a special code and prints the error to stderr. You may thus want to get the stderr pipe for passing
	-- it to await_process, it handles this and you can get a more detailed error message in this case.

	-- The pipes need to be inherited
	local sattr = ffi.new("SECURITY_ATTRIBUTES")
	sattr.nLength = ffi.sizeof("SECURITY_ATTRIBUTES")
	sattr.bInheritHandle = true
	sattr.lpSecurityDescriptor = nil

	-- Set up the pipes - they have a read end and a write end
	local READ_END, WRITE_END = 0, 1
	-- I'd have liked HANDLE[2][1], but I need to be able to set them to nil arbitrarily...
	local p_stdin, p_stdin_made = {[READ_END]=ffi.new("HANDLE[1]"), [WRITE_END]=ffi.new("HANDLE[1]")}, false
	local p_stdout, p_stdout_made = {[READ_END]=ffi.new("HANDLE[1]"), [WRITE_END]=ffi.new("HANDLE[1]")}, false
	local p_stderr, p_stderr_made = {[READ_END]=ffi.new("HANDLE[1]"), [WRITE_END]=ffi.new("HANDLE[1]")}, false

	local function cleanup_win_error()
		local errmsg = format_last_win_error()
		if p_stdin_made then
			ffi.C.CloseHandle(p_stdin[READ_END][0])
			ffi.C.CloseHandle(p_stdin[WRITE_END][0])
		end
		if p_stdout_made then
			ffi.C.CloseHandle(p_stdout[READ_END][0])
			ffi.C.CloseHandle(p_stdout[WRITE_END][0])
		end
		if p_stderr_made then
			ffi.C.CloseHandle(p_stderr[READ_END][0])
			ffi.C.CloseHandle(p_stderr[WRITE_END][0])
		end
		return false, errmsg
	end

	if retain_stdin then
		if not ffi.C.CreatePipe(p_stdin[READ_END], p_stdin[WRITE_END], sattr, 204800) then
			return cleanup_win_error()
		end
		p_stdin_made = true
		-- VVVVVV should not inherit the write end
		if not ffi.C.SetHandleInformation(p_stdin[WRITE_END][0], HANDLE_FLAG_INHERIT, 0) then
			return cleanup_win_error()
		end
	else
		p_stdin[READ_END][0] = ffi.C.GetStdHandle(STD_INPUT_HANDLE)
		p_stdin[WRITE_END] = nil
	end
	if retain_stdout then
		if not ffi.C.CreatePipe(p_stdout[READ_END], p_stdout[WRITE_END], sattr, 1024) then
			return cleanup_win_error()
		end
		p_stdout_made = true
		-- VVVVVV should not inherit the read end
		if not ffi.C.SetHandleInformation(p_stdout[READ_END][0], HANDLE_FLAG_INHERIT, 0) then
			return cleanup_win_error()
		end
	else
		p_stdout[READ_END] = nil
		p_stdout[WRITE_END][0] = ffi.C.GetStdHandle(STD_OUTPUT_HANDLE)
	end
	if retain_stderr then
		if not ffi.C.CreatePipe(p_stderr[READ_END], p_stderr[WRITE_END], sattr, 1024) then
			return cleanup_win_error()
		end
		p_stderr_made = true
		-- VVVVVV should not inherit the read end
		if not ffi.C.SetHandleInformation(p_stderr[READ_END][0], HANDLE_FLAG_INHERIT, 0) then
			return cleanup_win_error()
		end
	else
		p_stderr[READ_END] = nil
		p_stderr[WRITE_END][0] = ffi.C.GetStdHandle(STD_ERROR_HANDLE)
	end

	local startupinfo = ffi.new("STARTUPINFOW")
	startupinfo.cb = ffi.sizeof("STARTUPINFOW")
	startupinfo.hStdInput = p_stdin[READ_END][0]
	startupinfo.hStdOutput = p_stdout[WRITE_END][0]
	startupinfo.hStdError = p_stderr[WRITE_END][0]
	startupinfo.dwFlags = STARTF_USESTDHANDLES
	local processinfo = ffi.new("PROCESS_INFORMATION_VED")
	processinfo.vedTimeout = timeout

	-- Arguments?
	local cmdline = "\"" .. path .. "\" " .. table.concat(args_table, " ")
	local len_cmdline = cmdline:len()+1
	local buffer_cmdline_utf16 = ffi.new("WCHAR[?]", len_cmdline)
	ffi.C.MultiByteToWideChar(CP_UTF8, 0, cmdline, -1, buffer_cmdline_utf16, len_cmdline)

	-- VVVVVV-CE 1.0-pre1 expected data.zip in the working directory, still can't hurt to start the process there
	local buffer_workingdir_utf16 = ffi.new("WCHAR[?]", MAX_PATH)
	ffi.copy(buffer_workingdir_utf16, path_utf8_to_utf16(get_parent_path(path)), MAX_PATH)

	-- Start VVVVVV
	local success = ffi.C.CreateProcessW(
		path_utf8_to_utf16(path),
		buffer_cmdline_utf16,
		nil,
		nil,
		true,
		CREATE_NO_WINDOW,
		nil,
		buffer_workingdir_utf16,
		startupinfo,
		ffi.cast("LPPROCESS_INFORMATION", processinfo)
	)
	if not success then
		return cleanup_win_error()
	end

	-- Now we can close our unused pipe handles right?
	if p_stdin_made then
		ffi.C.CloseHandle(p_stdin[READ_END][0])
	end
	if p_stdout_made then
		ffi.C.CloseHandle(p_stdout[WRITE_END][0])
	end
	if p_stderr_made then
		ffi.C.CloseHandle(p_stderr[WRITE_END][0])
	end

	return true, processinfo, p_stdin[WRITE_END], p_stdout[READ_END], p_stderr[READ_END]
end

function write_to_pipe(write_end, data)
	-- Returns success, err
	-- You can only use this once for a pipe. After calling this function, the pipe is closed.

	local bytes_written = ffi.new("DWORD[1]")
	success = ffi.C.WriteFile(write_end[0], data, data:len(), bytes_written, nil)

	if not success then
		local errmsg = format_last_win_error()
		ffi.C.CloseHandle(write_end[0])
		return false, errmsg
	end

	ffi.C.CloseHandle(write_end[0])
	return true
end

function read_from_pipe(read_end)
	-- Returns success, maybe_data (`true, data` on success, `false, err` on failure)

	-- capacity excludes space for a null terminator, so we know we can always add one
	local capacity = 1024
	local buf = ffi.C.malloc(capacity + 1)
	if buf == nil then
		return false, "NULL malloc"
	end

	local pos = 0
	while true do
		local cur_bytes_read = ffi.new("DWORD[1]")
		if not ffi.C.ReadFile(read_end[0], buf+pos, capacity-pos, cur_bytes_read, nil) then
			if ffi.C.GetLastError() == ERROR_BROKEN_PIPE then
				-- When all write handles are closed, it finishes off with one "unsuccessful" 0 bytes read
				-- (If not all handles are closed it blocks)
				local data = ffi.string(buf, pos)
				ffi.C.free(buf)
				return true, data
			end

			local errmsg = format_last_win_error()
			ffi.C.free(buf)
			return false, errmsg
		end
		pos = pos + cur_bytes_read[0]

		-- Buffer full?
		if pos >= capacity then
			capacity = capacity * 2
			local tmp = ffi.C.realloc(buf, capacity + 1)
			if tmp == nil then
				ffi.C.free(buf)
				return false, "NULL malloc"
			end
			buf = tmp
		end
	end
end


function await_process(processinfo, stderr_read_end)
	-- Wait for a child process to finish.
	-- You HAVE to call this function at some point after successfully starting a process!
	-- Returns success, maybe_exitcode (`true, exitcode` if process started and exited cleanly, else `false, err`)

	local timeout = INFINITE
	if processinfo.vedTimeout > 0 then
		timeout = processinfo.vedTimeout * 1000
	end

	local event = ffi.C.WaitForSingleObject(processinfo.hProcess, timeout)

	local success, maybe_exitcode
	if event == WAIT_FAILED then
		success, maybe_exitcode = false, format_last_win_error()
	elseif event == WAIT_TIMEOUT then
		ffi.C.TerminateProcess(processinfo.hProcess, 70)

		success, maybe_exitcode = false, L.VVVVVV_22_OR_OLDER
	else
		local exitcode = ffi.new("DWORD[1]")
		if not ffi.C.GetExitCodeProcess(processinfo.hProcess, exitcode) then
			success, maybe_exitcode = false, format_last_win_error()
		else
			success, maybe_exitcode = true, exitcode[0]
		end
	end

	ffi.C.CloseHandle(processinfo.hProcess)
	ffi.C.CloseHandle(processinfo.hThread)
	return success, maybe_exitcode
end

function process_cleanup(stdin_write_end, stdout_read_end, stderr_read_end)
	-- Needs to be called at some point after doing await_process, even if that failed.
	-- Cleans up internally, and also closes the pipe handles you give.

	if stdin_write_end ~= nil then
		ffi.C.CloseHandle(stdin_write_end[0])
	end
	if stdout_read_end ~= nil then
		ffi.C.CloseHandle(stdout_read_end[0])
	end
	if stderr_read_end ~= nil then
		ffi.C.CloseHandle(stderr_read_end[0])
	end
end
