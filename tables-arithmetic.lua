-- adding (__add)operator behavior to tables.
table1 = {1, 2, 3}

setmetatable(table1, {
     __add = function(t1, t2)
          if #t1 == #t2 then
               t_union = {}
               for i = 1, #t1 do table.insert(t_union, i, t1[i] + t2[i]) end
          end
          return t_union
     end
})

table2 = {4, 5, 6}

tables_1_2_sum = table1 + table2

for k, v in ipairs(tables_1_2_sum) do print(k, v) end
