
monthes = {december: 31, january: 31, february: 28,
  march: 31, april: 30, may: 31,
  june: 30, july: 31, august: 31,
  september: 30, october: 31, november: 30}

monthes.each do |sym, val|
  puts sym if val == 30
end