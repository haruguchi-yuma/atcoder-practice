k = gets.to_i
s = gets.chomp.chars.map(&:to_i)
t = gets.chomp.chars.map(&:to_i)

c = Array.new(10, k);
# 0はない
c[0] = 0

# カードの枚数更新
4.times do |i|
  c[s[i]] -= 1
  c[t[i]] -= 1
end

f = ->(ary) {
  a = Array.new(10, 0)
  ary.each { a[_1] += 1 }
  (1..9).sum { |i| i * (10 ** a[i]) }
}

cnt = 0
(1..9).each do |a|
  (1..9).each do |b|
    s[4] = a
    t[4] = b
    if f[s] > f[t]
      cnt += a == b ? c[a] * (c[a] - 1) : c[a] * c[b]
    end
  end
end


v = c.sum
total = v * (v-1)

p cnt / total.to_f
