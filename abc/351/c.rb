n = gets.to_i
a = gets.split.map(&:to_i)

stack = []

a.each do |aa|
  stack << aa

  while stack.size > 1
    x = stack.pop
    y = stack.pop

    break stack << y << x if x != y

    stack << x + 1

  end
end


p stack.size
