n, k, *a = $<.read.split.map(&:to_i)

mid = n / 2
res = []
[0, 1].repeated_permutation(mid) do |ary|
  sum = 0
  mid.times do |i|
    if ary[i] == 1
      sum += a[i]
    end
  end
  res << sum
end

h = {}
[0, 1].repeated_permutation(n - mid) do |ary|
  sum = 0
  (n - mid).times do |i|
    if ary[i] == 1
      sum += a[mid + i]
    end
  end
  h[sum] = true
end

res.each do |m|
  if h[k - m]
    puts 'Yes'
    exit
  end
end

puts 'No'


__END__
6 30
5 1 18 7 2 9

