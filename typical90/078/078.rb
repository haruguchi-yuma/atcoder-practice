# 素直に実装
N, M = gets.split.map(&:to_i)
g = Array.new(N) { [] }

M.times do
  a, b = gets.split.map{ _1.to_i - 1 }
  g[b] << a
  g[a] << b
end

puts g.select.with_index { |x, i| x.count{ _1 < i } == 1 }.size

# https://atcoder.jp/contests/typical90/tasks/typical90_bz
