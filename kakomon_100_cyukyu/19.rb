d = gets.to_i
n = gets.to_i
m = gets.to_i
dn = [0] + Array.new(n-1) { gets.to_i }
km = Array.new(m) { gets.to_i }

shop = dn.map { [_1, _1 + d] }.flatten.sort

res = km.sum { |target|
  i = shop.bsearch_index { target - _1 <= 0 }
  [(shop[i]-target).abs, (shop[i-1]-target).abs].min
}

puts res
