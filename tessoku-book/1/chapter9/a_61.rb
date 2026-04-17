n, m = gets.split.map(&:to_i)
g = Array.new(n) { [] }

m.times do |i|
  u, v = gets.split.map(&:to_i)
  g[u-1] << v
  g[v-1] << u
end

g.each_with_index do |ary, i|
  puts "#{i+1}: {#{ary.join(', ')}}"
end

