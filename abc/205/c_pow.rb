# cの偶奇性だけ考慮
a, b, c = gets.split.map(&:to_i)
ans = c.even? ? a.abs <=> b.abs : a <=> b

puts %w(< = >)[ans+1]
