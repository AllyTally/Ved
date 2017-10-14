checkver, nohttps, wgetavailable = ...

local request_base = "tolp.nl/ved/"
local request_query = "?sys=3&ver=" .. checkver

verchannel = love.thread.getChannel("version")

if wgetavailable then
	local pfile = io.popen("wget -qO- 'https://" .. request_base .. "version-ssl.php" .. request_query .. "' --https-only")

	versioncheckedt = pfile:read("*a")

	pfile:close()
elseif nohttps then
	local http = require("socket.http")

	versioncheckedt = http.request("http://" .. request_base .. "version.php" .. request_query)
else
	local https = require("ssl.https")

	versioncheckedt = https.request("https://" .. request_base .. "version-ssl.php" .. request_query)
end

print("Finished version request.")

if versioncheckedt == nil then
	verchannel:push("connecterror")
elseif versioncheckedt:sub(1,3) ~= "!>>" then
	verchannel:push("error")
else
	verchannel:push(versioncheckedt)
end

-- Other arguments returned by http(s).request: code, headers, status