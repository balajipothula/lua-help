
max = 3
count = 0
repeat
     io.write('enter number a: ')
     a = tonumber(io.read())
     count = count + 1
     if type(a) ~= 'number' then print('error: number expected: ' .. max - count .. ' attempt(s) left') end
until a or count > 2

count = 0
repeat
     io.write('enter number b: ')
     b = tonumber(io.read())
     count = count + 1
     if type(b) ~= 'number' then print('error: number expected: ' .. max - count .. ' attempt(s) left') end
until b or count > 2

print('sum of ' .. a .. ' and ' .. b .. ': ' .. a + b)
