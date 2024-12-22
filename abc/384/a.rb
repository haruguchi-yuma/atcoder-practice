# n, c1, c2 = gets.chomp.split
# n = n.to_i
# s = gets.chomp.chars

# puts s.map { |c| c != c1 ? c2 : c1 }.join
__END__
# 別解 gsub でやる
n, c1, c2 = gets.chomp.split
n = n.to_i
s = gets.chomp

puts s.gsub(/[^#{c1}]/, c2)
