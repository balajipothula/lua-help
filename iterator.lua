
--function square (l, i) if i < l then i = i + 1 return i, i * i end end
--for i, n in square, 7, 0 do print(i, n) end

function square (l, i)
     if i < l then
          i = i + 1
          return i, i * i
     end
end

for i, n in square, 7, 0 do
     print(i, n)
end