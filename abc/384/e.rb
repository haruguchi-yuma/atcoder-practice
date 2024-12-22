h, w, x = gets.split.map(&:to_i)
P, Q = gets.split.map(&:to_i)

di = [0, -1, 0, 1]
dj = [-1, 0, 1, 0]

s = Array.new(h) { gets.split.map(&:to_i) }

power = s[P-1][Q-1]

now = [[P-1, Q-1]]
que = [[P-1, Q-1]]

while (i, j = que.shift)
  p [i, j]
  p({power:})
  t = power / x.to_f
  p({t:})

  4.times do |k|
    ni, nj = i + di[k], j + dj[k]
    next if ni < 0 || nj < 0 || ni >= h || nj >= w
    if t > s[ni][nj]
      next if now.include?([ni, nj])
      power += s[ni][nj]
      s[ni][nj] = power
      now << [ni, nj]
      que = now
      next
    end
  end
end

p power
