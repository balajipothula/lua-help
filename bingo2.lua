-- Generating Bingo 5by5matrix_set

math.randomseed(os.time())
function bingo ()
  local set, tmp = {}, {}
  repeat
    e = math.random(1, 25)
    if e < 10 then e = '0' .. e end
    if not tmp[e] then table.insert(set, e) tmp[e] = true end
  until(#set == 25)
  return set
end

--for _, e in pairs(bingo()) do print(e) end

set = bingo()
for i = 1, #set do io.write(set[i] .. ' ') if i % 5 == 0 then print() end end
