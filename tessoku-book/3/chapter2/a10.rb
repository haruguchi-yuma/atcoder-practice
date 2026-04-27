n = gets.to_i
a = gets.split.map(&:to_i)

d = gets.to_i

i, j = 0, 0
ls = [0] + a.map { i = [i, it].max }
rs = a.reverse.map { j = [j, it].max }.reverse + [0]

d.times do
  l, r = gets.split.map(&:to_i)
  p [ls[l-1], rs[r]].max
end
