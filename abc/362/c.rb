n = gets.to_i
lr = Array.new(n) { gets.split.map(&:to_i) }

sum_l = lr.sum(&:first)
sum_r = lr.sum(&:last)

if sum_l > 0 || sum_r < 0
  puts 'No'
  exit
end

base = sum_l
a = Array.new(n, 0)

n.times do |i|
  l, r = lr[i]
  break if base == 0

  aa = [r-l, -base].min
  a[i] = l + aa
  base += aa
end


puts 'Yes'
puts a * ' '
