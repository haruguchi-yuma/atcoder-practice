a, b = gets.split.map(&:to_i)
l = 0
r = 10**18

f = -> (x) {
  a / Math.sqrt(x+1) + x * b
}

while l + 3 <= r
  c1 = (2*l + r)/3
  c2 = (l + 2*r)/3
  if f[c1] < f[c2]
    r = c2
  else
    l = c1
  end
end

ans = [f[0], f[l+1], f[r]].min
p ans
