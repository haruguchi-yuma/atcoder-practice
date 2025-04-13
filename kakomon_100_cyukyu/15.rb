n = gets.to_i
xy = Array.new(n) { gets.split.map(&:to_i) }

def dist(a, b)
  (((a[0] - b[0]) ** 2) + ((a[1] - b[1]) ** 2)) ** 0.5
end

permutation = xy.permutation(n)

puts permutation.sum { |ary|
  (n-1).times.sum { |i| dist(ary[i], ary[i+1]) }
} / permutation.size



__END__
3
0 0
1 0
0 1
