a = Array.new(3) { gets.split.map(&:to_i) }
p a.sum {|a,b| a*b }/10
__END__
50 7
40 8
30 9
