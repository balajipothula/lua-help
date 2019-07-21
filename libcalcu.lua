--> calculator library
--> module name and file name must be same.

local calc = {}


--[[
calc.sum = function (...)
--]]

--> calculating sum of numbers.
calc.sum = function (self, ...)
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

return calc
