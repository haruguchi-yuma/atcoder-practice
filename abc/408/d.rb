def solve(n, s)
  dp = Array.new(n+1) { [INF] * 3 }
  dp[0][0] = 0

  n.times do |i|
    3.times do |j|
      cost = (s[i].to_i == (j % 2) ? 0 : 1)
      (j+1).times do |pj|
        dp[i+1][j] = [dp[i+1][j], dp[i][pj]+cost].min
      end
    end
  end

  dp[-1].min
end

INF = 1001001001
t = gets.to_i

t.times do
  n = gets.to_i
  s = gets.chomp.chars
  p solve(n, s)
end

__END__
t = gets.to_i
t.times do
  n = gets.to_i
  s = gets.chomp

  total_ones = s.count('1')
  min_ops = total_ones

  diff = Array.new(n + 1, 0)

  (0...n).each do |i|
    diff[i+1] = diff[i] + (s[i] == '0' ? 1 : -1)
  end

  max_diff = diff[0]

  (0..n).each do |r|
    if r > 0
      ops = diff[r] - max_diff + total_ones
      min_ops = [min_ops, ops].min
    end

    max_diff = [max_diff, diff[r]].max
  end

  p min_ops
end
