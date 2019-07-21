--> calculator library
--> module name and file name must be same.

local calc = {}

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
    return r
  end
  return 0
end

return calc
