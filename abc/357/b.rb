s = gets.chomp.chars
n = s.size
upper = s.count { _1 =~ /[A-Z]/}
lower = n - upper
if upper > lower
  puts s.map(&:upcase).join
else
  puts s.map(&:downcase).join
end
