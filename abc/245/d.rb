n, m = gets.split.map(&:to_i)
ax = gets.split.map(&:to_i).reverse
cx = gets.split.map(&:to_i).reverse

bx = []

(m+1).times do |i|
  r = cx[i] / ax[0]

  bx << r
  n.times do |j|
    cx[i+j+1] -= (ax[j+1] * r)
  end
end

puts bx.reverse * ' '

__END__
1 2
2 1
12 14 8 2
