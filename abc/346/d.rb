n = gets.to_i
s = gets.chomp.chars
c = gets.split.map(&:to_i)

INF = 1001001001001001001
dp = Array.new(200005) { Array.new(2) { [INF] * 2 } }

# dpの初期化
2.times do |j|
  cost = 0
  cost = c[0] if s[0] != j.to_s
  dp[1][j][0] = cost
end

# 計算部分
(1...n).each do |i|
  2.times do |j|
    2.times do |k|
      2.times do |nj|
        nk = k
        nk += 1 if j == nj
        next if nk >= 2

        cost = (s[i] != nj.to_s ? c[i] : 0)
        dp[i+1][nj][nk] = [dp[i+1][nj][nk], dp[i][j][k]+cost].min
      end
    end
  end
end

ans = INF
2.times { |j| ans = [ans, dp[n][j][1]].min }

p ans
__END__
n = gets.to_i
s = gets.chomp.chars
c = gets.split.map(&:to_i)

# 奇数番目の10を入れ替える
n.times { |i| s[i] = (s[i].to_i ^ 1).to_s if i.odd?}

ans = 1e18

2.times do
  now = 0

  # 全部を1にした時のコストを算出
  n.times { |i| now += c[i] if s[i] == '0' }

  # 文字を1つずつ0にしていきコストを算出最後の文字は0にする必要がないのでn-1回のループ
  # なぜなら全て0のときは良い文字列が作れないから
  (n-1).times do |i|
    s[i] == '0' ? now -= c[i] : now += c[i]
    ans = [ans, now].min
  end

  n.times { |i| s[i] = (s[i].to_i ^ 1).to_s }
end

p ans

__END__


n = gets.to_i
s = gets.chomp.chars
c = gets.split.map(&:to_i)

# 奇数番目の10を入れ替える
n.times { |i| s[i] = (s[i].to_i ^ 1).to_s if i.odd?}

ans = 1e18

2.times do
  l = Array.new(n+1, 0)
  r = Array.new(n+1, 0)

  # 左からコストの累積を計算
  n.times do |i|
    l[i+1] = l[i]
    l[i+1] += c[i] if s[i] == '1'
  end

  # 右からコストの累積を計算
  (n-1).downto(0) do |i|
    r[i] = r[i+1]
    r[i] += c[i] if s[i] == '0'
  end

  # 両端が境界になることはないので1..n-1の範囲で境界を全探索
  (1...n).each do |i|
    ans = [ans, l[i]+r[i]].min
  end
  n.times { |i| s[i] = (s[i].to_i ^ 1).to_s }
end

p ans
