# lua-resty-cookie-parser
lua-resty-cookie-parser - Simple Cookie data parser for OpenResty/Lua



Synopsis

```lua
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

```

example Cookies
```php
Cookie: serverTTTType=1' union select 1,23,--; order=12312; memSize=7671; test=%7B%22;  nbamea=111;rememberMe=11;ada=qweq;ada=11;id=111;id=22123131"><img src=x onerror=alert(1)>?
```




return 

```php
{"order":"12312","id":"11122123131\"><img src x onerror alert(1)>?","nbamea":"111","serverttttype":"1' union select 1,23,--","ada":"qweq11","memsize":"7671","test":"{\"","rememberme":"11"}
```


Optimize the problem of getting key and value exceptions in the case of multiple equal sign


