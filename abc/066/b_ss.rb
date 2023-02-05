s = gets.chomp[0..-2]

puts s[/(.*)\1/].size
