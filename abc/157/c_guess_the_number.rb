# 最大3桁なので0..999で全探索
# N ≥ 2 の場合に限り左から 1 桁目は 0 が許されないことに注意

N, M = gets.split.map(&:to_i)
sc = Array.new(M) { gets.split.map(&:to_i) }
ans = -1

(0..999).each do |n|
  digits = n.digits.reverse
  next if digits.size != N
  break ans = n if sc.all? {|s, c| digits[s-1] == c }
end

puts ans

# https://atcoder.jp/contests/abc157/tasks/abc157_c
