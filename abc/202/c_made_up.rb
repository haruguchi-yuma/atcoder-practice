# j を固定して集計する
n = gets.to_i
a, b, c = Array.new(3) { gets.split.map(&:to_i) }
hash = Hash.new(0)

c.each do |j|
  hash[b[j-1]] += 1
end

puts a.sum { hash[_1] }
