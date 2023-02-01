# あまりの周期性を利用
a, b, c = gets.split.map(&:to_i)

mod = (b-1).times.map {|i| a * i.succ % b }

puts mod.include?(c) ? 'YES' : 'NO'
