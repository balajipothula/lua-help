function decodechar(c) return string.char(tonumber(c, 16)) end
 
function decodestring(s) local ds, t = string.gsub(s, "%%(%x%x)", decodechar); return ds end

function unescape(s)
  s = string.gsub(s, "&lt;",   "<")
  s = string.gsub(s, "&gt;",   ">")
  s = string.gsub(s, "&quote;", '"')
  s = string.gsub(s, "&apos;", "'" )
  s = string.gsub(s, "&#(%d+);",  function(n) return string.char(n) end)
  s = string.gsub(s, "&#x(%d+);", function(n) return string.char(tonumber(n,16)) end)
  s = string.gsub(s, "&amp;", "&")
  return s
end

print(unescape("&#34;Hello&quot; &apos;World&#39;"))

print(decodestring("http%3A%2F%2Ffoo%20bar%2F"))
