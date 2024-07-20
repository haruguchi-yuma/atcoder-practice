# すべての風船を高度 x以内で割ることは可能か判定せよ。
# デッドラインxに達するまでの時間を調べる

INF = 1 << 60
n = gets.to_i
hs = Array.new(n) { gets.split.map(&:to_i) }

l = 0
r = INF

while r - l > 1
  mid = (l + r) / 2

  ok = true
  t = Array.new(n, 0) # 各風船を割るまでの制限時間

  n.times do |i|
    h, s = hs[i]
    if mid < h
      break ok = false
    else
      t[i] = (mid - h) / s
    end
  end

  t.sort!
  # 時間切れ
  n.times { |i| break ok = false if t[i] < i }

  ok ? r = mid : l = mid
end

p r
