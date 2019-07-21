--> reading file line by line.
local file_name = 'manual_beginner.txt'
local file = io.open(file_name, 'r')

if not file then
  print 'file not exist'
else
  local i = 1
  for line in file:lines() do
    print(i, line)
    i = i + 1
  end
  file:close()
end
