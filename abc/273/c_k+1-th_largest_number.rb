n, *a = $<.read.split.map(&:to_i)

h = {}

size = a.uniq.size
a.uniq.sort.each_with_index do |n, i|
  h[size-i-1] = n
end

t = a.tally

(0...n).each do |k|
  puts t[h[k]] || 0
end
