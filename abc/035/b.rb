s = gets.chomp
t = gets.to_i

move = {
  'L' => [-1, 0],
  'R' => [1, 0],
  'U' => [0, -1],
  'D' => [0, 1]
}

x, y = 0, 0
cnt = 0
s.chars.each do |c|
  next cnt += 1 if c == ??

  dx, dy = move[c]
  x += dx
  y += dy
end

d = x.abs + y.abs

p t == 1 ? d + cnt : d > cnt ? d - cnt : (cnt - d) & 1
