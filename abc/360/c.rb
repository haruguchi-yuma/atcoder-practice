n = gets.to_i
a = gets.split.map(&:to_i).map(&:pred)
w = gets.split.map(&:to_i)

boxes = Array.new(n) { [] }

n.times do |i|
  aa = a[i]
  ww = w[i]

  boxes[aa] << ww
end

p boxes.sum { |box| box.sum - (box.max || 0) }
