# 注意: TLEします
h, w, n = gets.split.map(&:to_i)
t = gets.chomp.chars

di = [0, -1, 0, 1]
dj = [-1, 0, 1, 0]

s = Array.new(h) { gets.chomp.chars }
ans = 0

(1...h).each do |i|
  (1...w).each do |j|
    next if s[i][j] == '#'
    ni, nj = i, j
    flag = true
    t.each do |c|
      case c
      when 'L'
        ni += di[0]
        nj += dj[0]
      when 'R'
        ni += di[2]
        nj += dj[2]
      when 'U'
        ni += di[1]
        nj += dj[1]
      when 'D'
        ni += di[3]
        nj += dj[3]
      end
      break flag = false if s[ni][nj] == '#'
    end
    ans += 1 if flag
  end
end
p ans
