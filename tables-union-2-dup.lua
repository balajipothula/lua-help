
-- overriding (+) __add operator behavior as union to tables.
local table1 = {10, 20, 30, 30, 40, 40, 10, 20}
local table2 = {30, 40, 50, 60, 60, 50, 70, 60}
table.sort(table1)
table.sort(table2)

setmetatable(table1, {
     __add = function(t1, t2)
          local union = {}
          local i = 1
          for k, v in ipairs(t1) do if not union[t1[k]] then table.insert(union, i, t1[k]) union[union[i]] = true i = i + 1 end end
          for k, v in ipairs(t2) do if not union[t2[k]] then table.insert(union, i, t2[k]) union[union[i]] = true i = i + 1 end end
          return union
     end
})

local union = table1 + table2
for i, v in ipairs(union) do if i == 1 then io.write('{ ') end if i ~= #union then io.write(v .. ', ') end if i == #union then io.write(v .. ' }') end end