
local function rows (con, qry)
  local cur = assert(con:execute(qry), 'Unable to execute query...!')
  return function () return cur:fetch() end
end

local function insert (con, no, name)
  local ins = assert(con:execute(string.format([[INSERT INTO emp VALUES ('%d', '%s')]], no, name)))
  return ins
end

local env = assert(require 'luasql.mysql'.mysql(), 'Unable to load MySQL driver...!')

HOST      = '127.0.0.1'
DB        = 'emp'
USER      = 'bala'
PASSWORD  = 'bala'
PORT      = 3306

local con = assert(env:connect(DB, USER, PASSWORD, HOST, PORT), 'Unable to connect to the MySQL server...!')

local no = 5
local name = 'Darma'
local ins = insert(con, no, name)

local qry = 'SELECT no, name FROM emp.emp'
--local qry = 'SELECT no, name FROM emp.emp LIMIT 1'
for no, name in rows(con, qry) do print(string.format('No:%d, Name:%s', no, name)) end

con:close()
env:close()

