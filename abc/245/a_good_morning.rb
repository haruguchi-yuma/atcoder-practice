a, b, c, d = gets.split.map(&:to_i)
ans = 'Takahashi'

ans = 'Aoki' if a > c
ans = 'Aoki' if a == c &&  b > d

puts ans

# https://atcoder.jp/contests/abc245/submissions/me
