v = assert (6 == 6, "true")
print(v)

assert (5 == 6, "false")

print "enter a number:"
n = io.read("*number")
if not n and "number" ~= type(n) then
  error("invalid input")
end

print "enter a number:"
n = assert(io.read("*number"), "invalid input")

n = io.read()
assert(tonumber(n), "invalid input: " .. n .. " is not a number")
