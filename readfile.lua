--> reading whole file content.
local open = io.open

local function readfile(name)
  local file = open(name, 'r') -- r read mode.
  if not file then return nil end
  local content = file:read '*a' -- *a reads the whole file.
  file:close()
  return content
end

local content = readfile('users.txt');
print(content)

