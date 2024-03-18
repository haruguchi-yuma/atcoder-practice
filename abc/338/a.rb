s = gets.chomp
puts s.capitalize == s ? 'Yes' : 'No'
__END__
s = gets.chomp.chars
if s.size == 1
  puts s[0].match?(/[A-Z]/) ? 'Yes' : 'No'
else
  puts s[0].match?(/[A-Z]/) && s[1..].join.match?(/^[a-z]+$/) ? 'Yes' : 'No'
end
