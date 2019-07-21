--function square (l, i) if i < l then i = i + 1 return i, i * i end end
--function squares (l) return square, l, 0 end
--for i, n in squares(3) do print(i, n) end

function square (l, i)
     if i < l
     then
          i = i + 1
          return i, i * i
     end
end

function squares (l)
     return square, l, 0
end

for i, n in squares(3) do 
     print(i,n)
end