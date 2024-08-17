s = gets.chomp.chars

stack = []
s.each do |c|
  if c == ?1
    stack << 1
  elsif c == ?0
    stack << 0
  else
    stack.pop
  end
end
puts stack*''
