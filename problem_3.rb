
arr = [1]
new_value = 1
while new_value <= 100 do
  arr << new_value
  new_value = arr[-2] + arr[-1]
end
puts arr.inspect
