
local env = assert(require 'luasql.mysql'.mysql(), 'Unable to load MySQL driver...!')

HOST      = '127.0.0.1'
DB        = 'emp'
USER      = 'bala'
PASSWORD  = 'bala'
PORT      = 3306

local con = assert(env:connect(DB, USER, PASSWORD, HOST, PORT), 'Unable to connect to the MySQL server...!')

local qry = 'SELECT no, name FROM emp'

local cur = assert(con:execute(qry), 'Unable to execute query...!')
row = cur:fetch({}, 'a')
while row do
  print(string.format('No:%d, Name:%s', row.no, row.name))
  row = cur:fetch(row, 'a')
end

local function rows (con, qry)
  local cur = assert (con:execute(qry))
  return function () return cur:fetch() end
end

for no, name in rows(con, qry) do print(string.format('No:%d, Name:%s', no, name)) end

cur:close()
con:close()
env:close()
