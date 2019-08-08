local header_name = "X-Custom-Header"
print(header_name)

header_name = string.gsub(header_name, "-", "_")
print(header_name)

header_name = string.lower(header_name)
print(header_name)

header_name = string.gsub(header_name, "_", " ")
print(header_name)

header_name = string.gsub(" " .. header_name, "%W%l", string.upper):sub(2)
print(header_name)

header_name = string.gsub(header_name, " ", "-")
print(header_name)
