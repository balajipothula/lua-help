-- Simple max function.

function max (array)

	local mi = 1
	local mv = array[mi]

	for i, v in ipairs(array) do
		if v > mv then
			mi = i
			mv = v
		end
	end

	return mi, mv

end

i, v = max({8,1,3,9,5})
print('Index:' .. i .. '\nValue:' .. v)
