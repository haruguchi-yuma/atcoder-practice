n,k,*x=$<.read.split.map(&:to_i)
p x.sum { |z| [z, k-z].min * 2 }
