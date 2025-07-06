q = gets.to_i

a = []
q.times do
  case gets.split.map(&:to_i)
  in [1, c, x]
    a << [c, x]
  in [2, k]
    res = 0

    while k > 0
      c, x = a.shift

      if k > c
        res += (c * x)
        k -= c
      else
        res += (k * x)
        c -= k
        k = 0
        a.unshift([c, x])
      end
    end

    puts res
  end
end
