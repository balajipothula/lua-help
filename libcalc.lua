--> module name and file name must be same.
--> calculator library with non-global functions.

local _M = {}

--[[
_M.sum = function (self, ...)
--]]

--> calculating sum of numbers.
_M.sum = function (...)
  local r = 0
  local t = {...}
  if nil ~= t and 0 < #t then
    for i, n in ipairs(t) do
      if "string" ~= type(n) then
        r = r + n
      end
    end
  end
  return r
end

--> calculating sum of table of numbers.
_M.tsum = function (t)
  local r = 0
  if nil ~= t and 0 < #t then
    for i, n in ipairs(t) do
      if "string" ~= type(n) then
        r = r + n
      end
    end
  end
  return r
end

--> calculating product of numbers.
_M.mul = function (...)
  local r = 1
  local t = {...}
  if nil ~= t and 0 < #t then
    for i, n in ipairs(t) do
      if "string" ~= type(n) then
        r = r * n
      end
    end
  end
  return r
end

--> calculating product of table of numbers.
_M.tmul = function (t)
  local r = 1
  if nil ~= t and 0 < #t then
    for i, n in ipairs(t) do
      if "string" ~= type(n) then
        r = r * n
      end
    end
  end
  return r
end

--> calculating average of numbers.
_M.avg = function (...)
  local r = 0
  local t = {...}
  if nil ~= t and 0 < #t then
    for i, n in ipairs(t) do
      if "string" ~= type(n) then
        r = r + n
      end
    end
    return r / #t  
  end
  return 0
end

--> calculating average of table of numbers.
_M.tavg = function (t)
  local r = 0
  if nil ~= t and 0 < #t then
    for i, n in ipairs(t) do
      if "string" ~= type(n) then
        r = r + n
      end
    end
    return r / #t
  end
  return 0
end

--> calculating factorial of a number.
_M.fact = function (n)
  if "string" ~= type(n) and 0 <= n  then
    if 0 == n then
      return 1
    else
      return n * _M.fact(n-1)
    end
  end
  return 0
end


-- finding max value from variable arguments.
_M.max = function (...)
  local t = {...}
  local m = 0
  if nil ~= t and 0 < #t then
    m = t[1]
    for i, n in ipairs(t) do
      if "string" ~= type(n) and m < n then
        m = n
      end
    end
  end
  return m
end

-- finding max value from table of numbers.
_M.tmax = function (t)
  local m = 0
  if nil ~= t and 0 < #t then
    m = t[1]
    for i, n in ipairs(t) do
      if "string" ~= type(n) and m < n then
        m = n
      end
    end
  end
  return m
end

return _M
