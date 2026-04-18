n = gets.to_i

puts 10.times.map { (n >> it) % 2 }.reverse * ''

__END__
13
