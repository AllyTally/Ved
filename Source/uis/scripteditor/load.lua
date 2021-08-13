-- scripteditor/load

return function()
	newinputsys.create(INPUT.MULTILINE, "script_lines", processflaglabels(scripts[scriptname]))
	newinputsys.setnewlinechars("script_lines", "[|\r\n]")
	newinputsys.setpos("script_lines", utf8.len(inputs.script_lines[1]), 1)

	textlinestogo = 0
	scriptscroll = 0
	syntaxhlon = true

	-- Little bit of caching
	rememberflagnumber = -1

	-- Make sure we don't keep checking for script warnings when we can do it once.
	scrwarncache_script = nil
	scrwarncache_warn_noloadscript = false
	scrwarncache_warn_boxed = false
	scrwarncache_warn_name = false

	if oldstate ~= 3 then
		scripthistorystack = {}
	end
	scriptfromsearch = false
end
