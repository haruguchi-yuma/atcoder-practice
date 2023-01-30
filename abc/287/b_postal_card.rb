n, m = gets.split.map(&:to_i)

s = Array.new(n) { gets.chomp }
t = Array.new(m) { gets.chomp }
puts s.count { |str| t.any? { |a| str[-3,3] == a }  }
