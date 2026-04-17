n = gets.to_i
pi, a =Array.new(n) { gets.split.map(&:to_i) }.transpose

pi = [0] + pi + [0]
a = [0] + a + [0]

dp = Array.new(n+2) { [0] * (n+2) }

(0..n-1).reverse_each do |len|
  (1..n-len).each do |l|
    r = l + len
    p [l, r]
    score1 = 0
    score1 = a[l-1] if l <= pi[l-1] && pi[l-1] <= r

    score2 = 0
    score2 = a[r+1] if l <= pi[r+1] && pi[r+1] <= r

    if l == 1
      dp[l][r] = dp[l][r+1] + score2
    elsif r == n
      dp[l][r] = dp[l-1][r] + score1
    else
      dp[l][r] = [
        dp[l-1][r] + score1,
        dp[l][r+1] + score2
      ].max
    end
  end
end

p (1..n).map { |i| dp[i][i]}.max


__END__
4
4 20
3 30
2 40
1 10
