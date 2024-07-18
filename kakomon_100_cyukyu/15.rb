n = gets.to_i
xy = Array.new(n) { gets.split.map(&:to_i) }

def dist(a, b)
  ((a[0]- b[0]) ** 2 + (a[1] - b[1]) ** 2) ** 0.5
end

def fact(n)
  n == 0 ? 1 : n * fact(n-1)
end

p xy.permutation(n).map { _1.each_cons(2) }.sum { |ary| ary.sum { |a, b| dist(a, b) } } / fact(n)
