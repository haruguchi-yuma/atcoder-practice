n, q = gets.split.map(&:to_i)
a = [0] + gets.split.map(&:to_i)

dp = Array.new(32) { [0] * (n + 1) }
(1..n).each { |i| dp[0][i] = a[i]}

(1..29).each do |d|
  (1..n).each do |i|
    dp[d][i] = dp[d-1][dp[d-1][i]]
  end
end

(1..q).each do |j|
  x, y = gets.split.map(&:to_i)
  now = x

  (0..29).reverse_each do |d|
    now = dp[d][now] if y[d] == 1
  end
  p now
end

__END__
7 4
2 4 1 7 6 5 3
1 1
1 5
2 13
5 999999999
