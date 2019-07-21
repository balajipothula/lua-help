--> module name and file name must be same.
--> calculator library with non-global functions.

local calc = {}

--[[
calc.sum = function (self, ...)
--]]

--> calculating sum of numbers.
calc.sum = function (...)
  local r = 0
  local t = {...}
  if nil ~= t and 0 < #t then
    for n in ipairs(t) do
      if "number" == type(n) then
        r = r + n
      end
    end
  end
  return r
end

--> calculating product of numbers.
calc.mul = function (...)
  local r = 1
  local t = {...}
  if nil ~= t and 0 < #t then
    for n in ipairs(t) do
      if "number" == type(n) then
        r = r * n
      end
    end
  end
  return r
end

--> calculating average of numbers.
calc.avg = function (...)
  local r = 0
  local t = {...}
  if nil ~= t and 0 < #t then
    for n in ipairs(t) do
      if "number" == type(n) then
        r = r + n
      end
    end
    return r / #t
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
