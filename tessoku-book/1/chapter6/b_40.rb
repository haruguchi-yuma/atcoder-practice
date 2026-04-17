n, *a = $<.read.split.map(&:to_i)
a = a.map{ _1 % 100 }

cnt = a.tally

puts a.sum { |i|
  j = (100 - i) % 100
  if i == 50 || i == 0
    cnt[j] - 1
  else
    cnt[j] || 0
  end
} / 2
