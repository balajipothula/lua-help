
for i = 1, 25 do print(math.random(100000, 999999)) end


local ffi = require("ffi")
ffi.cdef[[
int printf(const char *fmt, ...);
]]
ffi.C.printf("Hello %s!", "world")
