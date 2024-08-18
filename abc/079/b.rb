n = gets.to_i
ans = [2, 1]
(2..n).each { ans << ans[-1] + ans[-2] }
p ans[-1]
