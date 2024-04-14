l, r = gets.split.map(&:to_i)

ans = []
cnt = 0
while l < r
  i =  l == 0 ? Math::log2(r).to_i : l.to_s(2)[/0*\z/].size

  j = l if i == 0
  j = l / 2 ** i

  while 2 ** i * (j + 1) > r
    i -= 1
    j *= 2
    break if i == 0
  end

  res = 2**i*(j+1)
  break ans << [l] if l == r
  ans << [l, res]
  l = res
  cnt += 1
end

puts ans.size
puts ans.map { _1 * ' ' }
