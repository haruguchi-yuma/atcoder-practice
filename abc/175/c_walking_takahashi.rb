x, k, d = gets.split.map(&:to_i)
x = x.abs

if x > d * k
  puts x - (d * k)
else
  _k = k - (x / d)
  _p = x % d
  puts _k.even? ? _p : (_p - d).abs
end

# https://atcoder.jp/contests/abc175/tasks/abc175_c
