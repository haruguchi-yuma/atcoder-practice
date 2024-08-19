n=gets.to_i;a=gets.split.map(&:to_i).sort.reverse
p n.times.sum { |i| i.even? ? a[i] : -a[i] }
