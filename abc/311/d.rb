n, m = gets.split.map(&:to_i)
s = Array.new(n) { gets.chomp.chars }

que = []
visited = Array.new(n) { Array.new(m, false) }
passed = Array.new(n) { Array.new(m, false) }

di = [0, -1, 0, 1]
dj = [-1, 0, 1, 0]

que << [1, 1]
visited[1][1] = true
passed[1][1] = true

while (i, j = que.shift)
  4.times do |v|
    ni = i
    nj = j

    while s[ni][nj] == '.'
      passed[ni][nj] = true
      ni += di[v]
      nj += dj[v]
    end

    ni -= di[v]
    nj -= dj[v]

    next if visited[ni][nj]
    visited[ni][nj] = true
    que << [ni, nj]
  end
end

p passed.sum { _1.count(true) }

__END__
6 6
######
#....#
#.#..#
#..#.#
#....#
######
