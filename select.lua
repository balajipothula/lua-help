--> select function.
print(          string.find("BALAJI RAO POTHULA", "RAO"))  -->  8	 10
print(select(1, string.find("BALAJI RAO POTHULA", "RAO"))) -->  8	 10
print(select(2, string.find("BALAJI RAO POTHULA", "RAO"))) --> 10

local i, e = select(1, string.find("BALAJI RAO POTHULA", "RAO"))
print(i, e)


function b(...)
  for i = 1, select('#', ...) do
    myTable[#myTable+1] = select(i,...)
  end
end

b('c','d')
