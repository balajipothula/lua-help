--> parsing all single quoted strings.
line1 = "major_ver='1', minor_ver='1.1'"
res1  = string.match(line1, "%b''")
res1  = string.gsub(res1, "'", "")
print(res1)

--> parsing all double quoted strings.
line2 = 'major_ver="2", minor_ver="2.2"'
res2  = string.match(line2, '%b""')
res2  = string.gsub(res2, '"', '')
print(res2)

--> parsing all single quoted strings.
line3 = [[major_ver='3', minor_ver='3.3']]
res3  = string.match(line3, [[%b'']])
res3  = string.gsub(res3, [[']], [[]])
print(res3)

--> parsing all single quoted strings.
line4 = [[major_ver="4", minor_ver="4.4"]]
res4  = string.match(line4, [[%b""]])
res4  = string.gsub(res4, [["]], [[]])
print(res4)

--> parsing all single quoted strings.
line1 = "major_ver='1', minor_ver='1.1'"
for chunk in string.gmatch(line1, "'(.-)'")   do print(chunk) end

--> parsing all double quoted strings.
line2 = 'major_ver="2", minor_ver="2.2"'
for chunk in string.gmatch(line2, '"(.-)"')   do print(chunk) end

--> parsing all single quoted strings.
line3 = [[major_ver='3', minor_ver='3.3']]
for chunk in string.gmatch(line3, [['(.-)']]) do print(chunk) end

--> parsing all double quoted strings.
line4 = [[major_ver="4", minor_ver="4.4"]]
for chunk in string.gmatch(line4, [["(.-)"]]) do print(chunk) end
