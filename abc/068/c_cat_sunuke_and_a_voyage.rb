# 島1から島i 島iから島Nまでいけるようなiを探す
N, M = gets.split.map(&:to_i)
g = Array.new(N) { [] }

M.times do |i|
  a, b = gets.split.map{ _1.to_i - 1 }
  g[b] << a
  g[a] << b
end

puts (g.first & g.last).empty? ? 'IMPOSSIBLE' : 'POSSIBLE' 

# https://atcoder.jp/contests/abc068/tasks/arc079_a
