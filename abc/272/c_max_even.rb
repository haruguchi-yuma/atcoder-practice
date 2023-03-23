# 入力をソートして偶数と奇数に分ける　偶数1個、奇数1個の時は和を偶数にすることはできない
n, *a = $<.read.split.map(&:to_i)
even, odd = a.sort.partition(&:even?)

if even.size < 2 && odd.size < 2
  puts -1
else
  puts [even.max(2).sum, odd.max(2).sum].max
end
