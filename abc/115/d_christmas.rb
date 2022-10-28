# 漸化式を作る
# 再起関数を利用

n, x = gets.split.map(&:to_i)

def rec(n, x, l, s)
  return 1 if n == 0
  return 0 if x == 1
  return rec(n - 1, x - 1, l, s)  if x <= l[n - 1] + 1
  return s[n - 1] + 1 if x == l[n - 1] + 2
  return rec(n - 1, x - l[n - 1] - 2, l, s) + s[n - 1] + 1 if x <= l[n -1] * 2 + 2
  s[n - 1] * 2 + 1
end

l = [1] * (n + 1)
s = [1] * (n + 1)

(1..n).each do |n|
  l[n] = l[n - 1] * 2 + 3
  s[n] = s[n - 1] * 2 + 1
end

puts rec(n, x, l, s)

# https://atcoder.jp/contests/abc115/tasks/abc115_d
