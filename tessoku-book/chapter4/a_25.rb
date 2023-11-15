h, w = gets.split.map(&:to_i)
c = Array.new(h) { gets.chomp.chars }

dp = Array.new(h) { [0] * w }
dp[0][0] = 1

h.times do |i|
  w.times do |j|
    next if [i, j] == [0, 0]

    dp[i][j] += dp[i-1][j] if c[i][j] == '.' && i >= 1
    dp[i][j] += dp[i][j-1] if c[i][j] == '.' && j >= 1
  end
end

p dp[h-1][w-1]


__END__
4 8
.....#..
........
..#...#.
#.......
