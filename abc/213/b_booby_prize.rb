n, *a = $<.read.split.map(&:to_i)
puts a.index(a.max(2).last) + 1
