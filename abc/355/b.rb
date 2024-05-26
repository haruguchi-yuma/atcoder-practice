n, m = gets.split.map(&:to_i)
a = gets.split.map { [_1.to_i, 1] }
b = gets.split.map { [_1.to_i, 0] }
c = (a+b).sort_by(&:first).map(&:last)

puts c.each_cons(2).any? { |x, y| x * y == 1 } ? 'Yes' : 'No'

__END__
a を 1 にすることでかけて1のときにaが2回連続という判定をしている
