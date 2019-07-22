
print("usage of memory in  Bytes : " .. collectgarbage("count") * 1024)
print("usage of memory in KBytes : " .. collectgarbage("count"))

io.write("enter a number: ")
n = assert(io.read("*number"), "invalid input")
print("entered number: " .. n)

print("usage of memory in  Bytes : " .. collectgarbage("count") * 1024)
print("usage of memory in KBytes : " .. collectgarbage("count"))
