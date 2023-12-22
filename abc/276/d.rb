n, *a = $<.read.split.map(&:to_i)

a2 = Array.new(n, 0)
a3 = Array.new(n, 0)
base = []

a.each_with_index do |n, i|
  while n % 2 == 0
    n /= 2
    a2[i] += 1
  end

  while n % 3 == 0
    n /= 3
    a3[i] += 1
  end

  base << n
end

if base.uniq.size != 1
  p -1
  exit
end

def f(ary)
  min = ary.min
  ary.map { _1 - min }.sum
end

p f(a2) + f(a3)



__END__
3
1 4 3

