--> calculator library
--> module name and file name must be same.

local calc = {}

--[[
calc.sum = function (self, ...)
--]]

--> calculating sum of numbers.
calc.sum = function (...)
  local r          = 0
  local ntable     = {...}
  local ntablesize = #ntable
  if nil ~= ntable and 0 < ntablesize then
    for i, n in ipairs(ntable) do
      if "number" == type(n) then
        r = r + n
      end
    end
  end
  return r
end

--> calculating product of numbers.
calc.mul = function (...)
  local r          = 1
  local ntable     = {...}
  local ntablesize = #ntable
  if nil ~= ntable and 0 < ntablesize then
    for i, n in ipairs(ntable) do
      if "number" == type(n) then
        r = r * n
      end
    end
  end
  return r
end

--> calculating average of numbers.
calc.avg = function (...)
  local r          = 0
  local ntable     = {...}
  local ntablesize = #ntable
  if nil ~= ntable and 0 < ntablesize then
    for i, n in ipairs(ntable) do
      if "number" == type(n) then
        r = r + n
      end
    end
    return r / ntablesize
  end
  return 0
end

--> calculating factorial of a number.
calc.fact = function (...)
  if "number" == type(n) and 0 <= n then
    if 0 == n then
      return 1
    else 
      return n * calc.fact(n-1)
    end
  end
  return 0
end

return calc
