local txt = "hello world..! hello balaji..!"

io.write("enter a string to find: ")
local str = io.read()

local pos = 1
local len = string.len(txt)

repeat
  local i, e = string.find(txt, str, pos, len)
  if nil ~= i and nil ~= e then
    print('"' .. string.sub(txt, i, e) .. '" string exist in the text at position ' .. i .. ", " .. e)
    pos = e + 1
  end
until(nil == i and nil == e)
