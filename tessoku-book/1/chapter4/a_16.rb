n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

dp = Array.new(n, 0)

dp[1] = a[0]

(2...n).each do |v|
  dp[v] =[
    dp[v-1] + a[v-1],
    dp[v-2] + b[v-2]
  ].min
end

p dp[n-1]
__END__
5
2 4 1 3
5 3 7
