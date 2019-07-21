-- Sorting table data with anonymous function and for loop.

students = { 
			{no=3, name='Ravi'},
			{no=1, name='Gopi'},
			{no=2, name='Bala'},
			{no=4, name='John'},
}
print 'Students'
for i = 1, #students do print('No : ' .. students[i].no .. '\t' .. 'Name : ' .. students[i].name) end

print 'Sort by no asc'
table.sort(students, function (a,b) return (a.no < b.no) end)
for i, v in ipairs(students) do print('No : ' .. students[i].no .. '\t' .. 'Name : ' .. students[i].name) end

print 'Sort by no desc'
table.sort(students, function (a,b) return (a.no > b.no) end)
for i, v in ipairs(students) do print('No : ' .. v.no .. '\t' .. 'Name : ' .. v.name) end

print 'Sort by name asc'
table.sort(students, function (a,b) return (a.name < b.name) end)
for i, v in pairs(students) do print('No : ' .. students[i].no .. '\t' .. 'Name : ' .. students[i].name) end

print 'Sort by name desc'
table.sort(students, function (a,b) return (a.name > b.name) end)
for i, v in pairs(students) do print('No : ' .. v.no .. '\t' .. 'Name : ' .. v.name) end
