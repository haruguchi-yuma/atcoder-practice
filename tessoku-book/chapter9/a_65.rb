n, *a = $<.read.split.map(&:to_i)

child = Array.new(n) { [] }

a.each_with_index do |v, i|
  child[v-1] << i+1
end

ans = Array.new(n, 0)

(0...n).reverse_each do |i|
  ans[i] = child[i].sum { |j| ans[j] + 1}
end

puts ans * ' '
