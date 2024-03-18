s = gets.chomp

puts s[/\A<=+>\z/] ? 'Yes' : 'No'
