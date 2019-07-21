-- defines a factorial recursive function.

function fact (n)
  if 'number' == type(n) then
    if 0 == n then
      return 1
    else
      return n * fact(n-1)
    end
  else
    return 0
  end
end

io.write("enter n: ")
n = io.read("*n") -- n = io.read("*number")
print(fact(n))
print(string.format("%18.f", fact(n)))
