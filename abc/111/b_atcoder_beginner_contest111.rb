# [111, 222, 333 , ... , 999]のリストを用意してfindで超える初めての数を探す
n = gets.to_i
puts 111.step(999, 111).find { n <= _1 }