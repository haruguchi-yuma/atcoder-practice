# N会繰り返しても2に辿り着けない場合は無限ループしてると判断できる
N, *A = $<.read.split.map(&:to_i)
ans, i = 0, 0

N.times do
  i = A[i] - 1
  ans += 1
  break if i == 1
end

puts i == 1 ? ans : -1

# https://atcoder.jp/contests/abc065/tasks/abc065_b
