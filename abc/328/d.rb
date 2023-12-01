str = gets.chomp.chars

stack = []

str.each do |c|
  stack << c
  stack.pop(3) if stack[-3..-1] == %w(A B C)
end

puts stack.join
