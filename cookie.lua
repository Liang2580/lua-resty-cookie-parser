--[[
    nginx_lua return Cookie table
    Author:Jack Ben
    Time:2021-06-10
]]--
function arrlen(arr)
	if not arr then return 0 end
	count = 0
	for _,v in ipairs(arr)
	do
		count = count + 1
	end
	return count
end

function split2(input, delimiter)
    input = tostring(input)
    delimiter = tostring(delimiter)
    if (delimiter=='') then return false end
    local pos,arr = 0, {}
    for st,sp in function() return string.find(input, delimiter, pos, true) end do
        table.insert(arr, string.sub(input, pos, st - 1))
        pos = sp + 1
    end
    table.insert(arr, string.sub(input, pos))
    return arr
end

local _M = {}
local mt = { __index = _M }


function _M.new()
   return setmetatable({
      data = ngx.var.http_cookie,
   }, mt)
end

function _M.getcookie2(self)
    local data = self.data
    local match_table = {}
    cookie_list=split2(data,';')
    if not cookie_list then return match_table end 
    for i,v in ipairs(cookie_list) do
        ret={}
        v_list=split2(v,'=')
        if arrlen(v_list)==1 then 
            ret[v_list[1]]=''
            table.insert(match_table,ret)
        else
            ret[v_list[1]]=table.concat(v_list,' ',2)
            table.insert(match_table,ret)
        end 
    end 
    return match_table
end

return _M
