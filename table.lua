-- defines a factorial function
table = {}

table['i'] = 'hi'
print(table.i)
print(table['i'])
print(table["i"])

for i = 1, 9 do
	table[i] = i
end

for i = 1, #table do
	print(table[i])
end


for i = 1, 3 do
	table[i] = io.read()
end

for i = 1, 3 do
	print(table[i])
end
