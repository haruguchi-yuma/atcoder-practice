n,k,x,y = $<.map(&:to_i)
p [n,k].min*x+[(n-k)*y,0].max
