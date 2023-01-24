# 数学的に解いた
n, k = gets.split.map(&:to_i)

puts k * n * (100 * (n + 1) + (k +1)) / 2

# 何も考えずに2重ループ
n, k = gets.split.map(&:to_i)
sum = 0
(1..n).each do |i|
  (1..k).each do |j|
    sum += 100 * i + j
  end
end

puts sum
