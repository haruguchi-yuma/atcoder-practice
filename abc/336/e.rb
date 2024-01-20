# TLE になるコード

n = gets.to_i
n += 1
dp = Array.new(16) { Array.new(2) { Array.new(130) { Array.new(130, nil) } } }
digits = n.digits.reverse
m = digits.size

ans = 0
(1..126).each do |k|
  (m+1).times { |i| 2.times { |j| (k+1).times { |s| k.times { |r| dp[i][j][s][r] = 0 } } } }
  dp[0][0][0][0] = 1

  m.times do |i|
    2.times do |j|
      (k+1).times do |s|
        k.times do |r|
          10.times do |d|
            ni = i + 1
            nj = j
            ns = s + d
            nr = (r * 10 + d) % k

            break if ns > k

            if j == 0
              break if digits[i] < d
              nj = 1 if digits[i] > d
            end

            dp[ni][nj][ns][nr] += dp[i][j][s][r];
          end
        end
      end
    end
  end
  ans += dp[m][1][k][0]
end

p ans
