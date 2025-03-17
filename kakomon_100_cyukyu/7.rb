n = gets.to_i

xy = Array.new(n) { gets.split.map(&:to_i) }

list = {}
xy.each do |points|
  list[points] = true
end

def square?(x1, y1, x2, y2, list)
  d1 = (x1 - x2).abs
  d2 = (y1 - y2).abs
  list[[x1+d2, y1+d1]] && list[[x2+d2, y2+d1]]
end

res = []
xy.combination(2) do |(x1, y1), (x2, y2)|
  res << (x1 - x2).pow(2) + (y1 - y2).pow(2) if find?(x1, y1, x2, y2, list)
end

p res.max || 0

__END__
10
9 4
4 3
1 1
4 2
2 4
5 8
4 0
5 3
0 5
5 2
