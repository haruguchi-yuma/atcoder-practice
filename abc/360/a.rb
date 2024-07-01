str = gets.chomp.chars

r = str.index(?R)
m = str.index(?M)

puts r < m ? 'Yes' : 'No'

__END__
s = gets.chomp
s.delete!('S')
puts s[/RM/] ? 'Yes' : 'No'
