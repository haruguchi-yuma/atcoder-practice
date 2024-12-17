m = gets.to_i
s = Array.new(m) { gets.split.map(&:to_i) }
n = gets.to_i
t = Array.new(n) { gets.split.map(&:to_i) }

h = {}
t.each { |ary| h[ary] = true}

x1, y1 = s.first
t.each do |x2,y2|
  x = x2 - x1
  y = y2 - y1

  if s.all? {|xx, yy| h[[xx+x, yy+y]] }
    puts [x, y] * ' '
    break
  end
end

__END__
# 2回目といたらほぼほぼ同じで笑った。
m = gets.to_i
t = Array.new(m) { gets.split.map(&:to_i) }
n = gets.to_i
s = Array.new(n) { gets.split.map(&:to_i) }

points = {}
s.each { |xy| points[xy] = true }

target_x, target_y = t[0]

s.each do |x, y|
  diff_x = x - target_x
  diff_y = y - target_y


  if t.all? { |xx, yy| points[[xx+diff_x, yy+diff_y]] }
    puts [diff_x, diff_y] * ' '
  end
end

