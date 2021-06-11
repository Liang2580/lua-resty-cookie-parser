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


