n, m, b = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

p n * m * b + a.sum * m + c.sum * n
