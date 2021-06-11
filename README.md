# -lua-resty-cookie-parser
lua-resty-cookie-parser - Simple Cookie data parser for OpenResty/Lua



Synopsis

```lua
local json = require "cjson"
local parser = require "cookie_parser"
local cookie =cookie_new:new()
local cookie_list = cookie:getcookie()
for i,v in ipairs(name) do
 ngx.say("== Cookie part ==")
    ngx.say("name: [", json.encode(v), "]")
end 

```

example Cookies
```php
Cookie: serverType=ngin">< img src=x onerro=alert(`1x><img src=x; order=123121; memSize=7671; test=%7B%22
```
return 
```php
[{"serverType":"ngin\">< img src x onerro alert(`1x><img src x"},{" order":"123121"},{" memSize":"7671"},{" test":"%7B%22"}]
```


Optimize the problem of getting key and value exceptions in the case of multiple equal sign


