d, n = gets.split.map(&:to_i)
t = Array.new(d) { gets.to_i }
abc = Array.new(n) { gets.split.map(&:to_i) }

dp = Array.new(d+1) { [-1001001001] * n }

d.times do |i|
  tt = t[i]
  n.times do |j|
    a, b, c = abc[j]
    next if !((a..b) === tt)

    if i == 0
      dp[i+1][j] = 0
      next
    end

    # 前の日に何を着ていたか
    n.times do |k|
      pa, pb, pc = abc[k]
      dp[i+1][j] = [dp[i][k] + (c - pc).abs, dp[i+1][j]].max
    end
  end
end

p dp[-1].max
