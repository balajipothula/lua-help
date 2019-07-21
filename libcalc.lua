--> calculator library
--> module name and file name must be same.

local calc = {}

--> calculating sum of numbers.
function calc.sum (...)
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

--> calculating multiplication of numbers.
function calc.mul (...)
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

--> calculating avg of numbers.
function calc.avg (...)
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
function calc.fact (n)
  if "number" == type(n) and 0 <= n then
    if 0 == n then
      return 1
    else 
      return n * calc.fact(n-1)
    end
  end
  return 0
end

function calc.sub (a, b) return a - b end
function calc.div (a, b) return a / b end
function calc.mod (a, b) return a % b end

return calc
