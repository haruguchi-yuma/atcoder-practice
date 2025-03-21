n = gets.to_i
ab = Array.new(n) { gets.split.map(&:to_i) }

a, b = ab.transpose

ma = a.sort[n/2]
mb = b.sort[n/2]

p ab.sum { _2 - _1 } + a.sum { (_1 - ma).abs } + b.sum { (_1 - mb).abs }
