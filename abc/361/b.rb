a, b, c, d, e, f = gets.split.map(&:to_i)
g, h, i, j, k, l = gets.split.map(&:to_i)

def overlap?(l1, r1, l2, r2)
  [l1, l2].max < [r1, r2].min
end
x = overlap?(a, d, g, j)
y = overlap?(b, e, h, k)
z = overlap?(c, f, i, l)

puts x && y && z ? 'Yes' : 'No'

__END__
a, b, c, d, e, f = gets.split.map(&:to_i)
g, h, i, j, k, l = gets.split.map(&:to_i)

def overlap?(ary1, ary2)
  ary1.min < ary2.max && ary1.max > ary2.min
end
x = overlap?([a, d], [g, j])
y = overlap?([b, e], [h, k])
z = overlap?([c, f], [i, l])

puts x && y && z ? 'Yes' : 'No'
