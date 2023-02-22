# n-1このものから11個選ぶときの組み合わせの総数を求める
n = gets.to_i

puts [*1...n].combination(11).size
