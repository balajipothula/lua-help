-- overriding (+) __add operator behavior as union to tables.
table1 = {10, 20, 30, 40}

setmetatable(table1, {
     __add = function(t1, t2)
          union = {}
          for i = 1, #t1 do table.insert(union, i, t1[i]) end
          j = 1
          for i = #t1 + 1, #t1 + #t2 do table.insert(union, i, t2[j])  j = j + 1 end
          union_set = {}
          for i = 1, #union do if not union_set[union[i]] then table.insert(union_set, union[i]) union_set[union[i]] = true end end
          return union_set
     end
})

table2 = {30, 40, 50}

table_1_2_union = table1 + table2

for i, v in ipairs(table_1_2_union) do
     if i == 1 then io.write('{ ') end
     if i ~= #table_1_2_union then io.write(v .. ', ') end
     if i == #table_1_2_union then io.write(v .. ' }') end
end
