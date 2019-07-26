function setn (t)
  local s = {}
  if nil ~= t and 0 < #t then
    for i, n in ipairs(t) do
      if not s[n] then
        table.insert(s, n)
        s[n] = true
      end
    end
  end
  return s
end

local t = {10, 20, 60, 40, 50, 60}
local s = setn(t)
for i = 1, #s do
  print(s[i])
end
