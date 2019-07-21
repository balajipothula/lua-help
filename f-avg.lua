
function sum (...)
	local s = 0
	for i, v in ipairs {...} do s = s + v end
	return s
end

print( 'sum of 1   => ' .. sum(1) )
print( 'sum of 1-2 => ' .. sum(1, 2) )
print( 'sum of 1-3 => ' .. sum(1, 2, 3) )
print( 'sum of 1-4 => ' .. sum(1, 2, 3, 4) )
print( 'sum of 1-5 => ' .. sum(1, 2, 3, 4, 5) )
