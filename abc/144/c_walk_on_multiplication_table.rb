# 1 から sqrt(n)まで調べれば良い
# a <= bとした時 aが決定するとbも決まる
n = gets.to_i

puts (1..Integer.sqrt(n)).map {|a| n % a == 0 ? a + (n / a) - 2 : nil }.compact.min
