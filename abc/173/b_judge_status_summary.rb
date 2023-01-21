n = gets.to_i
h =  Array.new(n) { gets.chomp }.tally

%w(AC WA TLE RE).each do |s|
  puts "#{s} x #{h[s] || 0}"
end
