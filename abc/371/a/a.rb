ops = gets.chomp.split

case ops
in ['<', '<', '<'] then puts 'B'
in ['<', '<', '>'] then puts 'C'
in ['>', '<', '<'] then puts 'A'
in ['<', '>', '>'] then puts 'A'
in ['>', '>', '<'] then puts 'C'
in ['>', '>', '>'] then puts 'B'
end
