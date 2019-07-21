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

function sum (a, b) return a + b end
function sub (a, b) return a - b end
function mul (a, b) return a * b end
function div (a, b) return a / b end
function mod (a, b) return a % b end

print(a .. ' + ' .. b .. ' = ' .. sum(a, b))
print(a .. ' - ' .. b .. ' = ' .. sub(a, b))
print(a .. ' * ' .. b .. ' = ' .. mul(a, b))
print(a .. ' / ' .. b .. ' = ' .. div(a, b))
print(a .. ' % ' .. b .. ' = ' .. mod(a, b))
