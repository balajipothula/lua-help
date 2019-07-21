----------------------------------------------------------------
-- Reading whole file content.
----------------------------------------------------------------
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
----------------------------------------------------------------


----------------------------------------------------------------
-- Reading file line by line.
----------------------------------------------------------------
for line in io.lines("users.txt") do print(line) end


----------------------------------------------------------------
-- Reading file line by line.
----------------------------------------------------------------
local name = 'manual_beginner.txt'
local file = io.open(name, 'r')

if not file then
  print 'file not exist'
else
  local n = 1
  for line in file:lines() do
    print(n .. ' ' .. line)
    n = n + 1
  end
  file:close()
end

