# x座標、y座標、方向(d)を変数に持ってシミュレーション
n = gets.to_i
strs = gets.chomp.chars
x, y = 0, 0
d = 0

dx = [1, 0 , -1, 0]
dy = [0, -1, 0, 1]

n.times do |i|
  if strs[i] == 'S'
    x += dx[d]
    y += dy[d]
  else
    d = (d + 1) % 4
  end
end

puts [x, y] * ' '

