local emp_table = { { no = "101", name = "Ram" },
                    { no = "102", name = "Sam" },
                    { no = "103", name = "Dev" },
                    { no = "104", name = "Tej" } }
                  
for _, emp in pairs(emp_table) do
  print(emp.no, emp.name)
end

for _, emp in pairs(emp_table) do
  print(emp["no"], emp["name"])
end

for i in ipairs(emp_table) do
  print(emp_table[i]["no"], emp_table[i]["name"])
end

for i in ipairs(emp_table) do
  if 0 == i % 2 then
    print(emp_table[i]["no"], emp_table[i]["name"])
  end  
end

for i = 1, #emp_table, 2 do
  print(emp_table[i]["no"], emp_table[i]["name"])
end

for i = 2, #emp_table, 2 do
  print(emp_table[i]["no"], emp_table[i]["name"])
end

print(emp_table[1]["no"], emp_table[1]["name"])

print(emp_table[#emp_table]["no"], emp_table[#emp_table]["name"])

print(emp_table[table.getn(emp_table)]["no"], emp_table[table.getn(emp_table)]["name"])

