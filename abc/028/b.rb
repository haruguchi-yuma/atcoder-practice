gets;puts (?A..?F).map {|i| $_.count i } * ' '
__END__
s=gets;puts (?A..?F).map{|i| $_.count i}*' '
s = gets.chomp.chars.tally
s.default = 0
puts %w(A B C D E F).map { s[_1] } * ' '
