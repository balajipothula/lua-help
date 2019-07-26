function search_linear (t, e)
  local p = 0
  if nil ~= t and 0 < #t then
    for i = 1, #t do
      if e == t[i] then
        p = i
        break
      end
    end
  end
  return p
end

function search_linear_multi (t, e)
  local p = {}
  if nil ~= t and 0 < #t then
    for i = 1, #t do
      if e == t[i] then
        table.insert(p, #p + 1, i)
      end
    end
  end
  return p
end

local t = {10, 20, 30, 40, 50, 60}
local e = 60
print(search_linear(t, e))

local t = {10, 20, 60, 40, 50, 60}
local e = 60
local p = search_linear_multi(t, e)
for i = 1, #p do print(p[i]) end
