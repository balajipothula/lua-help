-- defines a factorial recursive function.

function fact (n) if 0 == n then return 1 else return n * fact(n-1) end end

io.write("enter n: ")
n = io.read("*number")
print(tonumber(fact(n)))
