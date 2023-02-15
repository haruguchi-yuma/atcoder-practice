# 体力大きいやつに必殺技使う
n, k, *h = $<.read.split.map(&:to_i)
puts h.sum - h.max(k).sum
