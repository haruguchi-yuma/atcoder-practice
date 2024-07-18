k = gets.to_i
fixed = Array.new(k) { gets.split.map(&:to_i) }

def check(a,b)
  (a[0] - b[0]).abs != (a[1] - b[1]).abs
end

[*0..7].permutation do |perm|
  point = [*0..7].zip(perm)
  next unless fixed.all? { |f| point.include?(f) }

  table = Array.new(8) { Array.new(8, false) }
  point.each { |i, j| table[i][j] = true }

  if point.combination(2).all? { |a, b| check(a, b) }
    8.times do |i|
      puts 8.times.map { |j| table[i][j] ? 'Q' : '.' } * ''
    end
  end
end
