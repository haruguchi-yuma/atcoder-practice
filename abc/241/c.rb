n = gets.to_i

s = Array.new(n) { gets.chomp.chars }

di = [0, 1, 1, -1]
dj = [1, 0, 1, 1]

n.times do |i|
  n.times do |j|
    4.times do |v|
      ni, nj = i, j
      cnt = 0

      6.times do
        break cnt = 999 if ni < 0 || nj < 0 || ni >= n || nj >= n

        cnt += 1 if s[ni][nj] == '.'
        ni += di[v]
        nj += dj[v]
      end

      return puts 'Yes' if cnt <= 2
    end
  end
end

puts 'No'
