n, k, *a = $<.read.split.map(&:to_i)

if n <= k
  a = a.map.with_index { |a, i| [a, i, (k / n)] } 
  k %=  n
else
  a = a.map.with_index { |a, i| [a, i, 0] }
end

a = a.sort_by{ |x, y, z| x }

k.times do |i|
  a[i][-1] += 1
end

puts a.sort_by { |x, y, z| y }.map { _3 }
