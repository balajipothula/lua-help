-- calculating average value
function sum (...)
  local s          = 0
  local ntable     = {...}
  local ntablesize = #ntable
  if 0 < ntablesize then for i, n in ipairs(ntable) do if 'number' == type(n) then s = s + n end end end
  return s
end

print( 'sum of 1   => ' .. sum(1) )
print( 'sum of 1-2 => ' .. sum(1, 2) )
print( 'sum of 1-3 => ' .. sum(1, 2, 3) )
print( 'sum of 1-4 => ' .. sum(1, 2, 3, 4) )
print( 'sum of 1-5 => ' .. sum(1, 2, 3, 4, 5) )
