n,t=gets.split.map(&:to_i)
a=Array.new(n) { gets.to_i }
p a.chunk_while { _2 - _1 <= t }.sum { _1[-1] - _1[0] + t }
