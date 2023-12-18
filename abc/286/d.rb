# 部分和問題
# DP1行bitset Ver.
n, x = gets.split.map(&:to_i)
ab = []

n.times do |i|
  a, b = gets.split.map(&:to_i)
  ab.push(*([a] * b))
end

dp = 1
ab.size.times do |i|
  dp |= dp<<ab[i]
end

puts dp[x] == 1 ? 'Yes' : 'No'
__END__
# DP1行使い回しVer.
n, x = gets.split.map(&:to_i)
ab = []

n.times do |i|
  a, b = gets.split.map(&:to_i)
  ab.push(*([a] * b))
end

dp = [false] * (x + 101)
dp[0] = true

ab.size.times do |i|
  (0..x).reverse_each do |j|
    next if !dp[j]
    dp[j+ab[i]] |= dp[j]
  end
end

puts dp[x] ? 'Yes' : 'No'
__END__
n, x = gets.split.map(&:to_i)
ab = []

n.times do |i|
  a, b = gets.split.map(&:to_i)
  ab.push(*([a] * b))
end

dp = Array.new(ab.size) { [false] * (x + 1) }
dp[0][0] = true

(0...ab.size).each do |i|
  a = ab[i]
  (x+1).times do |j|
    next if !dp[i][j]
    dp[i+1][j] = true
    dp[i+1][j+a] = true if j + a <= x
  end
end

puts dp[-1][x] ? 'Yes' : 'No'
