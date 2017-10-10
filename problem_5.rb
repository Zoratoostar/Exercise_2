
print 'Enter a date in dd.mm.year format: '
dt_str = gets.strip
dt_arr = []
index = 0
while dt_arr.size < 3 do
  foo = ''
  while dt_str[index] != '.' && index < dt_str.length do
    foo << dt_str[index]
    index += 1
  end
  index += 1              #пропустим точку
  dt_arr << foo
end

day = dt_arr[0].to_i
month = dt_arr[1].to_i
year = dt_arr[2].to_i

days_of_monthes = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
  days_of_monthes[1] = 29
end

order_number = day
index = 0
while index < month - 1 do
  order_number += days_of_monthes[index]
  index += 1
end

puts "      Order number of date amount: #{order_number}"
