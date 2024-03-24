n, *a = $<.read.split.map(&:to_i)

puts (n-1).times.map { |i| a[i] * a[i+1] }.join(' ')
