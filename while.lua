-- defines a factorial function
i = 1
while i < 6 do
     local j = 1
     while j < i do
          io.write(j .. '\t')
          j = j + 1
     end
     print()
     i = i + 1
end
