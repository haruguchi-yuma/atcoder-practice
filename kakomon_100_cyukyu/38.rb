n = gets.to_i

n.times do
  s = gets.chomp.chars
  sn = s.size
  t = gets.chomp.chars
  tn = t.size

  dp = Array.new(1001) { Array.new(1001, 0) }

  (1..sn).each do |i|
    ss = s[i-1]
    (1..tn).each do |j|
      tt = t[j-1]
      if ss == tt
        dp[i][j] = [dp[i-1][j], dp[i][j-1], dp[i-1][j-1] + 1].max
      else
        dp[i][j] = [dp[i-1][j], dp[i][j-1]].max
      end
    end
  end
  puts dp[sn][tn]
end

__END__
3
abcbdab
bdcaba
abc
abc
abc
bc
