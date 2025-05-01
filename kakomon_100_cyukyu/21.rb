# H, Sの最大値 10**9 なので Math.log2(10**(9*2)) = 59.794705707972525
INF = 1 << 60
n = gets.to_i
hs = Array.new(n) { gets.split.map(&:to_i) }

l = 0
r = INF

while r - l > 1
  mid = (l + r) / 2

  ok = true
  t = Array.new(n, 0)

  n.times do |i|
    h, s = hs[i]
    if mid < h
      break ok = false
    else
      t[i] = (mid - h) / s
    end
  end

  t.sort!

  n.times { |i| break ok = false if t[i] < i }

  ok ? r = mid : l = mid
end

p r
