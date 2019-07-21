-- User defined iterator

function iterator (array)
     local i = 0
     return function () i = i + 1; return array[i] end
end

array = {1, 2, 3, 4, 5}
for v in iterator(array) do print(v) end
