# 自分より左側で最小値をメモっておく
n, *pi = $<.read.split.map(&:to_i)
min = 2 * 10 ** 5

ans =
  n.times.count do |i|
    min = pi[i] if min >= pi[i] # [min, pi[i]].minでも良さそう
    min >= pi[i]
  end

puts ans
