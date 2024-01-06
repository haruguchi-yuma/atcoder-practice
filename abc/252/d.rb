n, *a = $<.read.split.map(&:to_i)
b = a.tally.values

m = b.size
dp = Array.new(m+1) { [0] * 4 }

dp[0][0] = 1
m.times do |i|
  4.times do |j|
    dp[i+1][j] = dp[i][j]
    dp[i+1][j] += (dp[i][j-1] * b[i]) if j > 0
  end
end

p dp[m][3]
__END__
n, *a = $<.read.split.map(&:to_i)
b = a.tally.values
i = 0
s = [i] + b.map { i += _1 }
p (1...b.size-1).sum { |i| s[i] * b[i] * (s[-1] - s[i+1]) }


__END__
10
99999 99998 99997 99996 99995 99994 99993 99992 99991 99990
