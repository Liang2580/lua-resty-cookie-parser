local json=require "cjson"

function return_message(status,msg)
	ngx.header.content_type = "application/json;"
	ngx.status = status
	ngx.say(json.encode(msg))
    ngx.exit(status)
end

function getAllCookie()
    local cookie_new=require "cookie"
    local cookie =cookie_new:new()
    local name = cookie:getcookie2()
    return return_message(200,name)
 end
