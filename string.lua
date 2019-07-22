
--print(string.gsub("balaji rao", "ra", ''))
--print(string.gsub("balaji rao", " ", " "))
--print(string.find("usr:paswd", ':'))
--print(string.find("balaji rao", " "))

--print(string.format('%q', 'a string with "quotes" and \n new line'))

--[[
s = "hello world from Lua 123"
for w in string.gmatch(s, "%a+") do
  print(w)
end

s = "hello world from Lua 123"
for w in string.gmatch(s, "%d+") do
  print(w)
end
]]--

--print(string.gsub("hello world..! hello balaji..!", "hello", "hi"))

local s, f = "hello world..!", "hello"
local i, e = string.find("hello world..!", "hello")
print(string.sub(s, i, e))
