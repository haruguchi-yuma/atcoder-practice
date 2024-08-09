p *[1]*p(gets.to_i)
__END__
n = gets.to_i
a = [1, 2, 4, 8]
ans = []
now = -1

while now >= -4
  if n >= a[now]
    ans << a[now]
    n -= a[now]
  else
    now -= 1
  end
end

p ans.size
puts ans
