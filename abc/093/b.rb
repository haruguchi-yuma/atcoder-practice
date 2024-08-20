a,b,k=gets.split.map(&:to_i)
puts []|(a..b).first(k) + (a..b).last(k)
