n = gets.to_i

puts (1..n).select(&:odd?).count { |num| (1..num).count { num % _1 == 0 } == 8 }
