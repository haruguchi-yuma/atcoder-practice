n,m,x,*a = $<.read.split.map(&:to_i)
p [b=a.count{x<_1},m-b].min
