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
