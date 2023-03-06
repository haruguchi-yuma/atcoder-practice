# hashで集計するが種類数は別変数で管理する now
# hashは0になった瞬間を感知するための入れ物
# 0 から　1 増えると種類数 now がインクリメントされ
# 1 から 0 になると種類数 now がデクリメントされる
n, k, *c = $<.read.split.map(&:to_i)

ans = 0
hash = Hash.new(0)
now = 0

n.times do |i|
  now += 1 if (hash[c[i]] == 0)
  hash[c[i]] += 1

  if (i >= k)
    hash[c[i-k]] -= 1
    now -= 1 if hash[c[i-k]] == 0
  end
  ans = [ans, now].max
end

puts ans
