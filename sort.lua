local t = {10, 20, 60, 40, 50, 60}
table.sort(t, function(a,b) return tonumber(a) < tonumber(b) end)
t = tset(t)
for i = 1, #t do
  print(t[i])
end

local t = { "the", "quick", "brown", "fox" }
table.sort(t)
table.foreachi (t, print)
