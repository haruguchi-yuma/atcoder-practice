# 素直に実装 iを小さい数から順にためす。 i ** 2 > n のときの (i - 1) ** 2が答え
n = gets.to_i
i = 1

loop do
  if i * i > n
    break puts (i - 1) ** 2
  end
  i += 1
end

# 数学的考察が入る
puts Integer.sqrt(gets.to_i) ** 2

# 制約の範囲内でループ
n = gets.to_i

puts (1..31622).map{ _1 * _1 }.select{ _1 <= n }.last
