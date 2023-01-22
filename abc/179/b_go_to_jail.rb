# N <= 100なので全部調べる
n = gets.to_i
dices = Array.new(n) { gets.split.map(&:to_i) }
puts dices.each_cons(3).any? {|d| d.all? { _1 == _2 } } ? 'Yes' : 'No'
