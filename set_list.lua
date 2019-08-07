local function list_as_set(list)
  local set = kong.table.new(0, #list)
  for _, v in ipairs(list) do
    set[v] = true
  end

  return set
end
