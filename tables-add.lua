-- adding (__add)operator behavior to tables.
table_1 = {101, 102, 103}

setmetatable(table_1, {
     __add = function(new_table, table_2)
          for i = 1, table.maxn(table_2) do table.insert(new_table, #new_table + 1, table_2[i]) end
          return new_table
     end
})

table_2 = {104, 105, 106}

table_1_2 = table_1 + table_2

for k, v in ipairs(table_1_2) do print(k, v) end