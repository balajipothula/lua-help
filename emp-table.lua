local emptable = { { no = "101", name = "RAM" },
                   { no = "102", name = "SAM" } }

for i, emp in ipairs(emptable) do
  print(i .. "\t" .. emp["no"] .. "\t" .. emp["name"])
end

for i, _ in ipairs(emptable) do
  print(i, emptable[i]["no"], emptable[i]["name"])
end
