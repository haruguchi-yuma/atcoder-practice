n, *a = $<.read.split.map(&:to_i)
b = a.tally
c = b.max.last >= 4 ? [b.max.first] * 2 : 0

if c == 0
  c = b.select{ _2 >=2 }.keys.max(2)
end

puts c.size == 2 ? c.inject(:*) : 0

# https://atcoder.jp/contests/abc071/tasks/arc081_a
