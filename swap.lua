-- Variable definition:
local a, b

-- Initialization
a, b = 10, 30

io.write('Before Swapping', ' a=', a, ' b=', b, '\n')
b, a = a, b -- Swapping of variables
io.write('After  Swapping', ' a=', a, ' b=', b)
