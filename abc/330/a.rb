n, l, *a = $<.read.split.map(&:to_i)
p a.count { _1 >= l}
