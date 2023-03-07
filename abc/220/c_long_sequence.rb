n, *a, x = $<.read.split.map(&:to_i)

S = [s=0] + a.map { s += _1 }
div, mod = x.divmod(s)
puts div * n + S.index { _1 > mod }
