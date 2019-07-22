local t = "hello world..! hello balaji..!"

io.write("enter a string to find: ")
local s = io.read()

local p = 1
local l = string.len(t)

repeat
  local i, e = string.find(t, s, p, l)
  if nil ~= i and nil ~= e then
    print('"' .. string.sub(t, i, e) .. '" string exist in the text at position ' .. i .. ", " .. e)
    p = e + 1
  end
until(nil == i and nil == e)
