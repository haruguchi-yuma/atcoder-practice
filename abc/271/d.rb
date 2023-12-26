n, s = gets.split.map(&:to_i)
ab = Array.new(n) { gets.split.map(&:to_i) }

dp = Array.new(n+1) { [false] * (s+1)}
dp[0][0] = true

n.times do |i|
  a, b = ab[i]
  (s+1).times do |j|
    if dp[i][j]
      dp[i+1][j+a] = 'H' if j + a <= s
      dp[i+1][j+b] = 'T' if j + b <= s
    end
  end
end


ans = ''
unless dp[n][s]
  puts 'No'
else
  puts 'Yes'
  cur = s
  n.times do |i|
    if dp[~i][cur] == 'H'
      ans += 'H'
      cur -= ab[~i][0]
    else
      ans += 'T'
      cur -= ab[~i][1]
    end
  end
  puts ans.reverse
end
