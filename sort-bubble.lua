function bubblesort (t)
  local tsize = #t
  local flag
  repeat
    flag = false
    tsize = tsize - 1
    for i = 1, tsize do
      if t[i] > t[i + 1] then
        t[i], t[i + 1] = t[i + 1], t[i]
        flag = true
      end
    end
  until flag == false
end

local t = { 5, 6, 1, 2, 9, 14, 2, 15, 6, 7, 8, 97 }
bubblesort(t)
for i, j in pairs(t) do
    print(j)
end
