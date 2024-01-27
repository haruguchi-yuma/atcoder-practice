s = gets.chomp.squeeze
puts s.match?(/^A$/) || s.match?(/^B$/) || s.match?(/^C$/) || s.match?(/^AB$/) || s.match?(/^AC$/) || s.match?(/^BC$/) ||s.match?(/^ABC$/) ? 'Yes' : 'No'
__END__
AAABBBCCCCCCC
