w,*x = gets.split.map(&:to_i)
a,b = x.sort
p [b-(a+w), 0].max
