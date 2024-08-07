a = Array.new(4) { gets.chomp }

a.reverse_each do |str|
  puts str.reverse
end

__END__
puts $<.read.chomp.reverse

__END__
a = Array.new(4) { gets.chomp.split }
b = Array.new(4) { [] }

4.times do |i|
  4.times do |j|
    b[i][j] = a[3-i][3-j]
  end
end

puts b.map { _1.join(' ')}
