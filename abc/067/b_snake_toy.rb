n, k, *l  = $<.read.split.map(&:to_i)

puts l.max(k).sum
