n = gets.to_i

puts (1..n).count { !(_1.to_s[/7/] || _1.to_s(8)[/7/]) }
