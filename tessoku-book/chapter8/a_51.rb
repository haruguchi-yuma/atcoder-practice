q = gets.to_i
stack = []

q.times do |i|
  x, name = gets.chomp.split
  case x.to_i
  when 1
    stack << name
  when 2
    puts stack[-1]
  when 3
    stack.pop
  end
end
