str = gets.chomp.chars
stack = []

str.each_with_index do |c, i|
  if c == '('
    stack << i+1
  else
    puts "#{stack.pop} #{i+1}"
  end
end
