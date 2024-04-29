a, b, c = gets.split.map(&:to_i)

c_cnt = c.to_s(2).count('1')

d = (a - b).abs
e = (c_cnt - d) / 2
x =d + e
y = e

res1 = []
res2 = []
c.to_s(2).chars do |c|
  if c == '1' && x != 0
    x-=1
    res1 << 1
    res2 << 0
  elsif c == '1' && y != 0
    y -= 1
    res1 << 0
    res2 << 1
  else
    res1 << 0
    res2 << 0
  end
end

if x > 0 || y > 0
  puts -1
end
puts ([1] * (a - (d+e))).concat(res1).join.to_i(2)
puts ([1] * (b - e)).concat(res2).join.to_i(2)
