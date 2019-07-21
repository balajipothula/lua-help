io.write('enter number a : ')
a = io.read('*number')
io.write('enter number b : ')
b = io.read('*number')
print('sum of a and b : ' .. a + b)

io.write('enter number a : ')
a = assert(io.read("*number"), "invalid input")
io.write('enter number b : ')
b = assert(io.read("*number"), "invalid input")
print('sum of a and b : ' .. a + b)

io.write('enter number a : ')
a = io.read()
assert(tonumber(a), 'invalid input : ' .. a .. ' is not a number')
io.write('enter number b : ')
b = io.read()
assert(tonumber(a), 'invalid input : ' .. b .. ' is not b number')
print('sum of a and b : ' .. a + b)

io.write('enter number a : ')
a = io.read('*number')
if not a then error('invalid input') end
io.write('enter number b : ')
b = io.read('*number')
if not b then error('invalid input') end
print('sum of a and b : ' .. a + b)

io.write('enter number a : ')
a = io.read()
if not tonumber(a) then error('invalid input') end
io.write('enter number b : ')
b = io.read()
if not tonumber(b) then error('invalid input') end
print('sum of a and b : ' .. a + b)
