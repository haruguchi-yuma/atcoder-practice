# 2重ループで頑張った
# ループの中は結構愚直、言われた通りに実装してる

n = gets.to_i
str = gets.chomp.chars

(n-1).times do |i|
  cnt = 0
  (n - i - 1).times do |j|
    str[j] != str[j+i+1] ? cnt += 1 : break
  end
  puts cnt
end
