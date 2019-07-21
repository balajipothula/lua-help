local open = io.open

local function readfile(name)
  local file = open(name, 'r') -- r read mode.
  if not file then return nil end
  local content = file:read '*a' -- *a reads the whole file.
  file:close()
  return content
end

local content = readfile('users.txt');

content = ' ' .. content .. '\n'
content = content:gsub('%s(%S-):', '\n%1:')
for usr, paswd in string.gmatch(content, '(%S-):(.-)\n') do
  print(usr .. '\t' ..paswd)
end
