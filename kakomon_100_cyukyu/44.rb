INIT = 10**6+7
rtn = (1..180).map {|n| n*(n+1)*(n+2)/6 }
dp = Array.new(INIT, 1001001001)
dp2 = Array.new(INIT, 1001001001)

dp[0] = 0
dp2[0] = 0

rtn.each do |n|
  (0...(INIT-n)).each do |i|
    dp[n+i] = [dp[n+i], dp[i]+1].min
    if n.odd?
      dp2[n+i] = [dp2[n+i], dp2[i]+1].min
    end
  end
end

while n = gets.to_i
  break if n == 0

  puts [dp[n], dp2[n]]*' '
end


__END__
tpn = (1..180).map { |n| n * (n + 1) * (n + 2) / 6 }

dp = Array.new(10**6, 10**6)
dp[0] = 0
dp_odd = Array.new(10**6, 10**6)
dp_odd[0] = 0

tpn.each do |t|
  (0...(10**6-t)).each do |i|
    dp[i+t] = [dp[i+t], dp[i] + 1].min
    if t.odd?
      dp_odd[i+t] = [dp_odd[i+t], dp_odd[i] + 1].min
    end
  end
end

loop do
  n = gets.to_i
  break if n == 0
  puts "#{dp[n]} #{dp_odd[n]}"
end
