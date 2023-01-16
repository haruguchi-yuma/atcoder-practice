# ただ数える、それだけ
n, k, *h = $<.read.split.map(&:to_i)
puts h.count{ _1 >= k }
