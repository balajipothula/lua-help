-- declaring narray
local narray = {}

-- initializing narray
for row = 1, 3 do
  narray[row] = {}
  for col = 1, 3 do
    narray[row][col] = 'row-' .. row .. '~col-' .. col
  end
end

-- accessing narray
for row = 1, 3 do
  for col = 1, 3 do
    io.write(narray[row][col] .. '\t')
  end
  io.write('\n')
end
al 
-- single line multiple for loops
-- for row = 1, 3 do for col = 1, 3 do io.write(narray[row][col] .. '\t') end io.write('\n') end

-- dereference narray
narray = nil
