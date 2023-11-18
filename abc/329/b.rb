n, *a = $<.read.split.map(&:to_i)
p (a - [a.max]).max
