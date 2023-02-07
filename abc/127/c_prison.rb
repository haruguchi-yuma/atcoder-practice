# 配列作って & で共通要素抜き出す方法ではTLEになる
n, m = gets.split.map(&:to_i)
l, r = Array.new(m) { gets.split.map(&:to_i) }.transpose

puts (l.max..r.min).size
