-- Type.

print(type(variable))	-- nil

variable = 10
print(type(variable))	-- number

variable = 'Hi'
print(type(variable))	-- string

variable = print
print(type(variable))	-- function
variable(type(variable))	-- function
