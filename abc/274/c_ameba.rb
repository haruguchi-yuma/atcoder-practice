n, *a = $<.read.split.map(&:to_i)

c = [0]

n.times do |i|
  c[2*i+1] = c[a[i]-1] + 1
  c[2*i+2] = c[a[i]-1] + 1
end

puts c
