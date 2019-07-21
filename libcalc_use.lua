-- module name and file name must be same.

local calc = require('libcalc')

print("sum of emt: " .. calc.sum())
print("sum of 1-5: " .. calc.sum(1, 2, 3, 4, 5))

print("mul of emt: " .. calc.mul())
print("mul of 1-5: " .. calc.mul(1, 2, 3, 4, 5))

print("avg of emt: " .. calc.avg())
print("avg of 1-5: " .. calc.avg(1, 2, 3, 4, 5))

print("fct of   0: " .. calc.fact(0))
print("fct of   1: " .. calc.fact(1))
print("fct of   5: " .. calc.fact(5))
print("fct of  -5: " .. calc.fact(-5))

local t = {1, 2, 3, 4, 5}
print("sum of 1-5: " .. calc.tsum(t))
print("mul of 1-5: " .. calc.tmul(t))
print("avg of 1-5: " .. calc.tavg(t))
