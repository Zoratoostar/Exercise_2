
vowels = %w( a e i o u )
hsh = {}
('a'..'z').each_with_index do |lttr, index|
  hsh[lttr] = index + 1 if vowels.include? lttr
end
puts hsh
