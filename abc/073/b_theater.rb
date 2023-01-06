n = gets.to_i
lr = Array.new(n) { gets.split.map(&:to_i) }

puts lr.sum { |l, r| r - l + 1 }
