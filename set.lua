--> n_set function with numbers as arguments.
function n_set (...)
  local r = {}
  local t = {...}
  if nil ~= t and 0 < #t then
    if #t == 1 then
      return t
    end
    for _, n in ipairs(t) do
      if "number" == type(n) and not r[n] then
        table.insert(r, n)
        r[n] = true
      end
    end
    return r
  end
  return r
end

--> a_set function with alphabets as arguments.
function a_set (...)
  local r = {}
  local t = {...}
  if nil ~= t and 0 < #t then
    if #t == 1 then
      return t
    end
    for _, a in ipairs(t) do
      if "string" == type(a) and 1 == string.len(a) and nil == tonumber(a) and not r[a] then
        table.insert(r, a)
        r[a] = true
      end
    end
    return r
  end
  return r
end

--> s_set function with strings as arguments.
function s_set (...)
  local r = {}
  local t ={...}
  if nil ~= t and 0 < #t then
    if #t == 1 then
      return t
    end  
    for _, s in ipairs(t) do
      if "string" == type(s) and nil == tonumber(a) and not r[s] then
        table.insert(r, s)
        r[s] = true
      end
    end
    return r
  end
  return r
end

--> n_table_set function with numbers table as an argument.
function n_table_set (t)
  local r = {}
  if nil ~= t and 0 < #t then
    if #t == 1 then
      return t
    end
    for _, n in ipairs(t) do
      if "number" == type(n) and not r[n] then
        table.insert(r, n)
        r[n] = true
      end
    end
    return r
  end
  return r
end

--> a_table_set function with alphabets table as an argument.
function a_table_set (t)
  local r = {}
  if nil ~= t and 0 < #t then
    if #t == 1 then
      return t
    end  
    for _, a in ipairs(t) do
      if "string" == type(a) and 1 == string.len(a) and nil == tonumber(a) and not r[a] then
        table.insert(r, a)
        r[a] = true
      end
    end
    return r
  end
  return r
end

--> s_table_set function with strings table as an argument.
function s_table_set (t)
  local r = {}
  if nil ~= t and 0 < #t then
    if #t == 1 then
      return t
    end  
    for _, s in ipairs(t) do
      if "string" == type(s) and nil == tonumber(a) and not r[s] then
        table.insert(r, s)
        r[s] = true
      end
    end
    return r
  end
  return r
end

local n_table = n_set(10, 20, 30, 40, 10, 20, 30)
print("number table set elements are")
for i, n in ipairs(n_table) do
  print(n)
end

local a_table = a_set('a', 'b', '1', 'c', 'b', 'd', 'eat', 'a', 'e')
print("alphabet table set elements are")
for i, a in ipairs(a_table) do
  print(a)
end

local s_table = s_set('raj', 'surya', 'gopi', 'sita', 'raj', 'ravi', 'gopi')
print("string table set elements are")
for i, s in ipairs(s_table) do
  print(s)
end


local n_table = {10, 20, 30, 40, 10, 20, 30}
print("number table elements are")
for i, n in ipairs(n_table) do
  print(n)
end

local n_table = n_table_set(n_table)
print("number table set elements are")
for i, n in ipairs(n_table) do
  print(n)
end


local a_table = {'a', 'b', '1', 'c', 'b', 'd', 'eat', 'a', 'e'}
print("atable elements are")
for i, a in ipairs(a_table) do
  print(a)
end

local a_table = a_table_set(a_table)
print("atable set elements are")
for i, a in ipairs(a_table) do
  print(a)
end


local s_table = {'raj', 'surya', 'gopi', 'sita', 'raj', 'ravi', 'gopi'}
print("atable elements are")
for i, s in ipairs(s_table) do
  print(s)
end

local s_table = s_table_set(s_table)
print("ntable set elements are")
for i, s in ipairs(s_table) do
  print(s)
end
