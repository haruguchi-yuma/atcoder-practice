n,a,b=gets.split.map(&:to_i)
p (1..n).select { (a..b) === _1.digits.sum }.sum
