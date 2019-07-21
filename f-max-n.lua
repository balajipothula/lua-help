-- finding max value
function max (...)
  local ntable = {...}
  local maxn   = ntable[1]
  for i, n in ipairs(ntable) do if maxn < n then maxn = n end end
  return maxn
end

print(max(13, 2, 13, 4, 19, 2, 16))
