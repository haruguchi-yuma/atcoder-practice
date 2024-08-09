s = gets.chomp
n = gets.to_i
lr = Array.new(n) { gets.split.map(&:to_i).map(&:pred) }

lr.each do |l, r|
  s[l..r] = s[l..r].reverse
end

puts s

__END__
abcdef
2
3 5
1 4
