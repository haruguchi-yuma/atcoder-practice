n = gets.to_i
g = Array.new(5) { gets.chomp.chars }.transpose

dp = Array.new(n+1) { [0, 0, 0] }
colors = {
  0 => 'B',
  1 => 'R',
  2 => 'W'
}

(1..n).each do |i|
  row = g[i-1]
  3.times do |c|
    cnt = 5 - row.count(colors[c])
    dp[i][c] = [
      dp[i-1][(c+1)%3] + cnt,
      dp[i-1][(c+2)%3] + cnt
    ].min
  end
end

p dp[-1].min
