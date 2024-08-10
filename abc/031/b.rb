l,h,n,*a=$<.read.split.map(&:to_i);puts a.map{(l..h)===_1 ? 0 :l > _1 ? l-_1:-1}
