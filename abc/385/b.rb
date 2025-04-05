h, w, x, y = gets.split.map(&:to_i)
s = Array.new(h) { gets.chomp.chars }
t = gets.chomp.chars

ans = 0
x -= 1
y -= 1

t.each do |c|
  case c
  when 'U'
    nx = x - 1
    ny = y
  when 'D'
    nx = x + 1
    ny = y
  when 'L'
    nx = x
    ny = y - 1
  when 'R'
    nx = x
    ny = y + 1
  end

  next if nx < 0 || ny < 0 || nx >= h || ny >= w
  next if s[nx][ny] == '#'

  if s[nx][ny] == '@'
    s[nx][ny] = '!'
    ans += 1
  end


  x = nx
  y = ny
end

puts [x+1, y+1, ans].join(' ')
