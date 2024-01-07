n = gets.to_i

g = Array.new(n) {[nil] * n }

di = [0, 1, 0, -1]
dj = [1, 0, -1, 0]
i, j = 0, 0
g[n/2][n/2] = 'T'
g[i][j] = 1
cnt = 2
(n/2).times do
  4.times do |k|
    loop do
      i += di[k]
      j += dj[k]
      if i < 0 || i >= n || j < 0 || j >= n || !g[i][j].nil?
        i -= di[k]
        j -= dj[k]
        break
      end
      g[i][j] = cnt
      cnt += 1
    end
  end
end

puts g.map{ _1.join(' ') }
