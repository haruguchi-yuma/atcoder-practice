n,m=gets.split.map(&:to_i)
s = ((n%12)*30-m*5.5).abs
p [360-s, s].min

