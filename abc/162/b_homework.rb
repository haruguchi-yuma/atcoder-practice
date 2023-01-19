# -1以下は全部-1にする
n, m, *a = $<.read.split.map(&:to_i)
puts [n - a.sum, -1].max
