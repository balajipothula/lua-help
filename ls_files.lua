
function ls (path, ext)
  local filetable = {}
  for file in io.popen("ls " .. path):lines() do
    if string.find(file, "%." .. ext) then
      print(file)
      --table.insert(filetable, file)
    end
  end
  --return filetable
end

print(ls("$HOME/luapro", "lua"))
