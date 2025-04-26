k = gets.to_i
fixed = Array.new(k) { gets.split.map(&:to_i) }

def check(a, b)
  (a[0] - b[0]).abs != (a[1] - b[1]).abs
end

[*0..7].permutation do |ary|
  point = [*0..7].zip(ary)
  next unless fixed.all? { |f| point.include?(f) }

  board = Array.new(8) { [false] * 8 }
  point.each { |i, j| board[i][j] = true }

  if point.combination(2).all? { |a, b| check(a, b) }
    8.times do |i|
      puts 8.times.map { |j| board[i][j] ? 'Q' : '.' } * ''
    end
  end
end
