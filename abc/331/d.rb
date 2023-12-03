n, q = gets.split.map(&:to_i)
pi = Array.new(n) { gets.chomp.chars }

# 累積和用のグリッド
s = Array.new(n+1) { [0] * (n+1) }

# 初期状態を書き込んでいく
n.times do |i|
  n.times do |j|
    s[i+1][j+1] = (pi[i][j] == 'B' ? 1 : 0)
  end
end

#横
n.times do |i|
  n.times do |j|
    s[i+1][j+1] += s[i+1][j]
  end
end

#縦
n.times do |i|
  n.times do |j|
    s[i+1][j+1] += s[i][j+1]
  end
end

f = ->(c, d) {
  res = s[c%n][d%n] # 4分割右下の領域
  res += s[n][n] * (c/n) * (d/n) # 4分割左上の領域
  res += s[c%n][n] * (d/n) # 4分割左下の領域
  res += s[n][d%n] * (c/n) # 4分割右上の領域
}

q.times do
  a, b, c, d = gets.split.map(&:to_i)
  c += 1
  d += 1

  puts f[c, d] - f[c, b] - f[a, d] + f[a, b]
end
