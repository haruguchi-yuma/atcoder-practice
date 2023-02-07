n, k, *x = $<.read.split.map(&:to_i)

puts x.sum {[_1, k - _1].min} * 2
