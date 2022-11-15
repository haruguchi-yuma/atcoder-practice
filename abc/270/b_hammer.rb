# 条件分岐を簡略化するために壁Yは正の数に固定する
x, y, z = gets.split.map(&:to_i)
ans = 0

if y < 0
  x *= -1
  y *= -1
  z *= -1
end

if x < y
  ans = x.abs
else
  if z > y
    ans = -1
  else
    ans = (x - z).abs + z.abs
  end
end

puts ans

# https://atcoder.jp/contests/abc270/tasks/abc270_b
