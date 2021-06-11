local json=require "cjson"

function return_message(status,msg)
	ngx.header.content_type = "application/json;"
	ngx.status = status
	ngx.say(json.encode(msg))
    ngx.exit(status)
end

function getAllCookie()
    local parser = require "cookie"
    local cookie =parser:new()
    local cookie_list = cookie:getcookie()
    return return_message(200,cookie_list)
 end
