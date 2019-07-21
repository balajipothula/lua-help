
cor = coroutine.create(function()
  for i = 1, 10 do
    print("co", i)
    coroutine.yeild()
  end
end)

coroutine.resume(cor) --> co 1
print(coroutine.status(cor)) --> suspended

--cor = coroutine.create(function() print("hi") end)
--coroutine.resume(cor)
