n, *a = $<.read.split.map(&:to_i)
b = a

if a.size == 2
  puts a.index(a.min) + 1
  exit
end

(n-1).times do |i|
  b = b.each_slice(2).map(&:max)
  puts a.index(b.min) + 1 if i == n-2
end
