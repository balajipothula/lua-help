function set (t)
  local set = {}
  for _, v in ipairs(t) do
    if not set[v] then
      table.insert(set, v)
      set[v] = true
    end
  end
  return set
end

function print_set (t)
  for i, v in ipairs(t) do
    if i == 1 then
      io.write('{')
    end
    if i ~= #t then
      io.write(v .. ', ')
    end
    if i == #t then
      io.write(v .. '}')
    end
  end
end

function concat_sets(t1, t2)
  for _, v in ipairs(t2) do
    table.insert(t1, v)
  end
  return t1
end

table1 = {10, 20, 30, 40, 10, 20, 30}
table2 = {10, 30, 50, 10, 60, 40, 10}

table.sort(table1)
table.sort(table2)

table1 = set(table1)
table2 = set(table2)
