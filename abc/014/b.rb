n,x,*a=$<.read.split.map(&:to_i)
p n.times.sum {|i|x[i]*a[i]}
__END__
4 5
1 10 100 1000

