# bitで計算する
n, x = gets.split.map(&:to_i)
ab = Array.new(n) { gets.split.map(&:to_i) }
t = 1
ab.map { t = t << _1 | t << _2 }
puts t[x] == 1 ? 'Yes' : 'No'


__END__
# 部分和　2次元DP
n, x = gets.split.map(&:to_i)
dp = Array.new(n+1) { [false] * (x + 1) }
dp[0][0] = true

n.times do |i|
  a, b = gets.split.map(&:to_i)

  (x+1).times do |j|
    if dp[i][j]
      dp[i+1][j+a] = dp[i][j] if j + a <= x
      dp[i+1][j+b] = dp[i][j] if j + b <= x
    end
  end
end

puts dp[-1][x] ? 'Yes' : 'No'


__END__
# 部分和 1次元DP
n, x = gets.split.map(&:to_i)
dp = [false] * (x + 1)
dp[0] = true

n.times do |i|
  a, b = gets.split.map(&:to_i)
  tmp = []

  (x+1).times do |j|
    if dp[j]
      tmp << j + a if j + a <= x
      tmp << j + b if j + b <= x
      dp[j] = false
    end
  end

  tmp.each { |i| dp[i] = true }
end

puts dp[x] ? 'Yes' : 'No'

