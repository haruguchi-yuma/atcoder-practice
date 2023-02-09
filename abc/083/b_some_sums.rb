n, a, b = gets.split.map(&:to_i)
puts (1..n).sum { (a..b) === _1.digits.sum ? _1 : 0 }
