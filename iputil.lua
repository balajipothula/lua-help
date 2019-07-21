package.path  = package.path  .. ";/home/balaji/luajit/lualib/?.lua"
package.cpath = package.cpath .. ";/home/balaji/luajit/luaso/?.so"

local bit = require("bitopt")

function dec2ip(dec) return bit:band(bit:rshift(dec, 24), 0xFF) .. "." .. bit:band(bit:rshift(dec, 16), 0xFF) .. "." .. bit:band(bit:rshift(dec, 8), 0xFF) .. "." .. bit:band(dec, 0xFF) end

function ip2dec(ip) local dec = 0; for d in string.gmatch(ip, "%d+") do dec = d + bit:lshift(dec, 8) end; return dec end

print(dec2ip(2637407690))
print(ip2dec("157.51.165.202"))
print(ip2dec("192.168.0.1"))
