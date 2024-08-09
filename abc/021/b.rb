_,x,_,y=*$<;puts (x+y).split.uniq!? :NO: :YES

__END__
n = gets.to_i
a, b = gets.split.map(&:to_i)
k = gets.to_i
p = gets.split.map(&:to_i)

route = [a] + p + [b]

puts route.size == route.uniq.size ? 'YES' : 'NO'
