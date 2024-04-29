n, a, b = gets.split.map(&:to_i)
d = gets.split.map { _1.to_i % (a+b) }.uniq.sort
m = d.size

l = 0
r = m-1
dd = d.concat(d)

m.times do |i|
  range = (dd[r] - dd[l]) % (a+b)


  if range + 1 <= a
    puts 'Yes'
    exit
  end
  l += 1
  r += 1
end

puts 'No'


__END__
5 3 7
9 10 11 10 30
