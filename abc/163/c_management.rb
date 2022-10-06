# tallyで数え上げデフォルト値の設定、出力
N, *A = $<.read.split.map(&:to_i)
a = A.tally
a.default = 0

N.times do |i|
  puts a[i+1]
end


# グラフっぽい解き方

N, *A = $<.read.split.map(&:to_i)
g = Array.new(N) { 0 }

(N-1).times do |i|
  g[A[i]-1] += 1
end

puts g

# https://atcoder.jp/contests/abc163/tasks/abc163_c
