n, k = gets.split.map(&:to_i)
a, b, c, d = Array.new(4) { gets.split.map(&:to_i) }


res1 = a.product(b).map(&:sum)

h = c.product(d).map(&:sum).map{ [_1, true] }.to_h

res1.each do |num|
  if h[k - num]
    puts 'Yes'
    exit
  end
end

puts 'No'




__END__
3 50
3 9 17
4 7 9
10 20 30
1 2 3
