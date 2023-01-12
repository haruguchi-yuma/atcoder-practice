a, b, k = gets.split.map(&:to_i)

result = []
[a, b].min.times do |i|
  result << i + 1 if a % (i + 1) == 0 && b % (i + 1) == 0
end

p result[-k] # 大きい方からK番目
