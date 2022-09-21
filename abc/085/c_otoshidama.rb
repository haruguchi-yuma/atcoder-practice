# 計算量をO(N^3)からO(N^2)にするために3重ループではなくcの値を自動的に決めている
N, Y = gets.split.map(&:to_i)

abc = [-1, -1, -1]

(0..N).each do |a|
  (0..N).each do |b|
    c = N - a - b
    next if c < 0 || c > N
    abc = a, b, c if 10000 * a + 5000 * b + 1000 * c == Y
  end
end

puts abc * ' '

# https://atcoder.jp/contests/abc085/tasks/abc085_c
