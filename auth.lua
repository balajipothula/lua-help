io.write('enter username : ')
local username = io.read()
io.write('enter password : ')
local password = io.read()

local filename = 'users.txt'
local file = io.open(filename, 'r')

local auth = false

if not file then
  print 'file not exist'
else
  for line in file:lines() do
    usr, paswd = line:match('(%w+):(%w+)')
    if username == usr and password == paswd then auth = true break end
  end
  file:close()
end

if auth then print('login success...') else print('login fail') end
