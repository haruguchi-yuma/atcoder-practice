n = gets.to_i
cnt = 0
# 奇数で全探索
1.step(n, 2) do |num|
  cnt += 1 if (1..num).count { num % _1 == 0 } == 8 # 約数を数えて8個ならcntを増やす
end

puts cnt
