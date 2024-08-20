n,x,*a=$<.read.split.map(&:to_i)
p n+(x-a.sum)/a.min
