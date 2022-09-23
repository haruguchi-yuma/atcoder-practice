# Kが偶数の時と奇数の時で場合わけ
N, K = gets.split.map(&:to_i)

ans = (1..N).count { _1 % K == 0 } ** 3
ans += (1..N).count { _1 % K == K / 2 } ** 3 if K.even?

puts ans

# https://atcoder.jp/contests/abc108/tasks/arc102_a
