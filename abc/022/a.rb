n,s,t,*w=gets(p).split.map(&:to_i)
a=0;p w.count { a += _1; (s..t) === a }
__END__
n,s,t,w,*a=$<.read.split.map(&:to_i)
p [n, s,t, w, a]
__END__
