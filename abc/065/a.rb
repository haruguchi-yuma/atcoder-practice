x,a,b=gets.split.map(&:to_i)
puts b <= a ? 'delicious' : b-a <= x ? 'safe' : 'dangerous'
