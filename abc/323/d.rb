n = gets.to_i
h = Hash.new(0)

class Integer
  def popcount
    cnt = 0
    num = self

    while num > 0
      cnt += num & 1
      num >>= 1
    end
    cnt
  end
end

n.times do |i|
  size, cnt = gets.split.map(&:to_i)
  x = 1

  while size%2 == 0
    size /= 2
    x *= 2
  end

  h[size] += x*cnt
end

ans = 0
p h.values.sum(&:popcount)


__END__
3
3 3
5 1
6 1
