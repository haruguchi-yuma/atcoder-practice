n,k,*l=$<.read.split.map(&:to_i)
p l.sort.max(k).sum
