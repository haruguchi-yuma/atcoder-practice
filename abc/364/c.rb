n, x, y = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort.reverse
b = gets.split.map(&:to_i).sort.reverse

i = 0
sa = [i] + a.map { i += _1 }
ai = sa.index { _1 > x } || n

i = 0
sb = [i] + b.map { i += _1 }
bi = sb.index { _1 > y } || n

p [ai, bi].min
