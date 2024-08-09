n,*a=$<.read.split.map(&:to_i)
n-=a.count(0);p (a.sum+n-1)/n
__END__
4
0 1 3 8
