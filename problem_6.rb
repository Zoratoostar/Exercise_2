
basket = {}
loop do
  print "Enter a goods name: "
  name = gets.strip.downcase
  if name == 'stop' then break end
  print "   Enter his price: "
  price = gets.to_f
  print "    Enter quantity: "
  quantity = gets.to_f

  if basket[name] == nil
    basket[name] = {}
  end
  if basket[name][price] == nil
    basket[name][price] = quantity
  else
    basket[name][price] += quantity
  end
end

puts basket
puts
flat_basket = {}
basket.each do |goods, hsh|
  amount = 0
  hsh.each do |price, quantity|
    amount += price * quantity
  end
  flat_basket[goods] = amount
end

def print_basket(flat_hash)
  index = 0
  aggregate_price = 0
  flat_hash.each do |goods, amount|
    print "\"#{goods}\" total price comes to #{amount}"
    index += 1
    if index == flat_hash.size
      puts ""
    else
      print ", "
    end
    aggregate_price += amount
  end
  puts
  return aggregate_price
end

puts "Price in total: #{print_basket flat_basket}"
puts
