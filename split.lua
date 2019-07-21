
local filename = 'users.txt'
local file = io.open(filename, 'r')

if not file then
  print 'file not exist'
else
  for line in file:lines() do
    for usr, paswd in string.gmatch(line, '(%w+):(%w+)') do
      print(usr .. '\t' .. paswd)
    end    
  end
  file:close()
end

function trim(s) return (s:gsub('^%s*(.-)%s*$', '%1')) end

