# 言われた通り愚直に実装
# [
#   {1: Y, 2: N, ...},
#   {1: N, 2: Y, ...},
# ]
# こんな感じのデータ構造にした

N, Q = gets.split.map(&:to_i)
g = Array.new(N) { (0...N).zip([:N] * N).to_h }

Q.times do
  a, b, c = gets.split.map{ _1.to_i - 1 }
  if a == 0
    g[b][c] = :Y
  elsif a == 1
    g.each_with_index do |hash, i|
      g[b][i] = :Y if hash[b] == :Y
    end
  else
    g[b].select{ _2 == :Y }.keys.each do |f|
      g[f].select{ _2 == :Y }.keys.each do |ff|
        g[b][ff] = :Y if ff != b
      end
    end
  end
end

puts g.map{ _1.values.join }

# https://atcoder.jp/contests/past201912-open/tasks/past201912_e
