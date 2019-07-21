str="a=b b=c name=george jetson name2=paul davidson company=radioshack" 
str=" "..str.."\n"
str=str:gsub("%s(%S-)=","\n%1=")
for name, value in string.gmatch(str, "(%S-)=(.-)\n") do
     print(name,"'"..value.."'")
end
