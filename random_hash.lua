math.randomseed(os.time())

function random_hash(len)

  if nil == len or 0 >= len then len = 32 end
  local hash = "";

  char = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
          "A", "B", "C", "D", "E", "F", "G", "H", "I", "J",
          "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T",
          "U", "V", "W", "X", "Y", "Z"}

  for i = 1, len do
    local r = math.random(1, #char)
    hash = hash .. char[r]
  end

  return hash

end

for i = 1, 100 do
  print("Random Hash String:", random_hash(32))
end
