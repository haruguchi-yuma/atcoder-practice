puts $<.drop(1).tally.max_by(&:last)[0]

__END__
n = gets.to_i
a = Array.new(n) { gets.chomp }
puts a.tally.max_by(&:last)[0]
