n = gets.to_i
s = gets.split.map(&:to_i)
q = gets.to_i
t = gets.split.map(&:to_i)

p t.count { |x| s.bsearch { |y| x - y } }

__END__
5
1 1 3 3 4
2
1 2 4
