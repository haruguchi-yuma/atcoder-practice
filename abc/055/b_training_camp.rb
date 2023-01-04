# 計算結果を逐一割っていくことで処理時間が速くなる

n = gets.to_i
WARI = (10 ** 9) + 7
puts (1..n).inject { |acc, num| acc * num % WARI }


# これはTLEする(つまりだめ)
n = gets.to_i

puts (1..n).inject(:*) % ((10 ** 9) + 7)
