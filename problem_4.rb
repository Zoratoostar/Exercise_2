
vowels = ['a', 'e', 'i', 'o', 'u']
hsh = {}
index = 0
('a'..'z').each do |lttr|
  index += 1
  hsh[lttr] = index if vowels.include?(lttr)
end
puts hsh
