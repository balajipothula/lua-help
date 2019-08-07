function readonlytable(table)
   return setmetatable({}, {
     __index = table,
     __newindex = function(table, key, value)
                    error("Attempt to modify read-only table")
                  end,
     __metatable = false
   });
end

function readonly (ctable)
  return setmetatable ({}, {
    __index = ctable,
    __newindex = function(t, k, v)
    error(tostring(k) .. " is readonly.")
    end
  })
end

ctable = {
  pi = 3.14159,
  e  = 2.71828,
  mu = 1.45136,
}

constant = readonly(ctable)

print(constant.pi)
constant.pi = 2
