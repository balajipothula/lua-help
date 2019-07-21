function string:split (delimiter)
  local result = {}
  local from = 1
  local delimiterfrom, delimiterto = string.find(self, delimiter, from)
  while delimiterfrom do
    table.insert(result, string.sub(self, from, delimiterfrom - 1))
    from  = delimiterto + 1
    delimiterfrom, delimiterto = string.find(self, delimiter, from)
  end
  table.insert(result, string.sub(self, from ))
  return result
end

local function split (s, delimiter)
  local result = {}
  local from = 1
  local delimiterfrom, delimiterto = string.find(self, delimiter, from)
  while delimiterfrom do
    table.insert(result, string.sub(self, from, delimiterfrom - 1))
    from  = delimiterto + 1
    delimiterfrom, delimiterto = string.find(self, delimiter, from)
  end
  table.insert(result, string.sub(self, from))
  return result
end

local s = "hello:world:from:lua"

print(s:split(":")[4])
