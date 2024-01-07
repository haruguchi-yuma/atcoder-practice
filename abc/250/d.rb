n = gets.to_i
m = 10**6
is_p = Array.new(m+1, true)
primes = []

is_p[0] = false
is_p[1] = false

(2..m).each do |i|
  next if !is_p[i]

  primes << i

  as = (i*2..m) % i # 等差数列
  as.each do |j|
    is_p[j] = false
  end
end

i = 0
s =  is_p.map { i += (_1 ? 1 : 0) }

ans = 0
primes.each do |q|
  r = [n/q/q/q, q-1].min
  ans += s[r]
end

p ans
