P = gets.to_f

f = -> x { x + P / 2**(x/1.5) }

low = 0.0
high = 1001001001

# 適当な回数計算(基準を与えておく)
cnt = 500
while cnt > 0
  cnt -= 1
  # 1:2 or 2:1に内分する点
  c1 = (low * 2 + high) / 3
  c2 = (low + high * 2) / 3

  f[c1] > f[c2] ? low = c1 : high = c2
end

puts f[low]

