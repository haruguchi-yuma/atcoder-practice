# ちょっと力技という感じでやってしまった
a, b, k = gets.split.map(&:to_i)

a > k ? 0.tap{ a -= k; k = _1 } : 0.tap { k -= a; a = _1 }
b = b > k ? b - k : 0

puts [a, b] * ' '


# こんなのでも良い
a, b, k = gets.split.map(&:to_i)

ab = [0, a - k].max, [b - [k - a, 0].max, 0].max
puts ab * ' '

# https://atcoder.jp/contests/abc149/tasks/abc149_b
