n, m, l = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).each.with_index.to_a
b = gets.split.map(&:to_i).each.with_index.to_a
sorted_a = a.sort_by(&:first).reverse
sorted_b = b.sort_by(&:first).reverse

remove = {}
Array.new(l) { remove[gets.split.map(&:to_i)] = true }

ans = []
sorted_a.each do |n, i|
  sorted_b.each do |m, j|
    next if remove[[i+1,j+1]] # スキップは高々全体でL回

    break ans << n + m
  end
end

p ans.max
