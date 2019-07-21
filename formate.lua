local str1 = 'hello'
local str2 = 'world'

local num1 = 10
local num2 = 20

-- string formatting
print(string.format('%s %s', str1, str2))

-- date formatting
local dd, MM, yyyy =  1,  1, 2020
print(string.format('Date: %2d-%2d-%4d', dd, MM, yyyy))

local dd, MM, yyyy = 31, 12, 2020
print(string.format('Date: %2d-%2d-%4d', dd, MM, yyyy))

-- decimal formatting
print(string.format('Pi: %.2f', 22/7))
