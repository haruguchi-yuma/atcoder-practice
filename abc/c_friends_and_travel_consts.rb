# 村人ごとにお金をもらっていき、到達可能点を割り出す
n, k = gets.split.map(&:to_i)
ab = Array.new(n) { gets.split.map(&:to_i) }.sort_by(&:first)

ans = k

ab.each do |a, b|
  break if a > ans
  ans += b
end

puts ans
