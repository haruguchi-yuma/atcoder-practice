# しゃくとり法
n, k, *a = $<.read.split.map(&:to_i)

r = [0]

(1...n).each do |i|
  i == 1 ? r[i] = 1 : r[i] = r[i-1]

  while r[i] < n && a[r[i]] - a[i-1] <= k
    r[i] += 1
  end
end

p r.sum - (n * (n-1) / 2)


__END__
n, k, *a = $<.read.split.map(&:to_i)
sum = 0

(n-1).times do |i|
  c = a[i]
  sum += (a.bsearch_index { _1 - c > k } || n) - (i + 1)
end

p sum

__END__
7 10
11 12 16 22 27 28 31
