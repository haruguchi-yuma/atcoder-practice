n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
d = gets.split.map(&:to_i)

ab = a.product(b).map(&:sum)
cd = c.product(d).map(&:sum).to_h { [it, true] }

puts ab.any? { cd[k-it] } ? 'Yes' : 'No'
