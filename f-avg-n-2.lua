-- calculating average value
function avg (...)
  local s = 0
  if 0 < #{...} then for i, n in ipairs({...}) do if 'number' == type(n) then s = s + n end end end
  return s / #{...}
end

print( 'avg of emt => ' .. avg() )
print( 'avg of 1   => ' .. avg(1) )
print( 'avg of 1-2 => ' .. avg(1, 2) )
print( 'avg of 1-3 => ' .. avg(1, 2, 3) )
print( 'avg of 1-4 => ' .. avg(1, 2, 3, 4) )
print( 'avg of 1-5 => ' .. avg(1, 2, 3, 4, 5) )
