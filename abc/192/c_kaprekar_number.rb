# 言われた通り実装
def g1(x)
  x.digits.sort.reverse.join.to_i
end

def g2(x)
  x.digits.sort.join.to_i
end

def f(x)
  g1(x) - g2(x)
end

n, k = gets.split.map(&:to_i)

k.times do
  n = f(n)
end

puts n
