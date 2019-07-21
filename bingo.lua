-- Generating Bingo 5by5matrix_set

set = {}
math.randomseed(os.time())
local temp = {}
repeat
     element = math.random(1, 25)
     if not temp[element] then
          if element < 10 then io.write('0' .. element .. ' ') else io.write(element .. ' ') end
          table.insert(set, element)
          if #set % 5 == 0 then io.write('\n') end
          temp[element] = true
     end
until(#set == 25)
