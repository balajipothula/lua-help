-- finding max value
function max (...)
  local ntable = {...}
  local maxn   = ntable[1]
  for i, n in ipairs(ntable) do
    if 'number' == type(n) then
      if maxn < n then
        maxn = n
      end
    end
  end
  return maxn
end

print (max(13, 2, 1, 13, 4, 19, 2, 16))
