n = gets.to_i
ans = 0

a = 1
while (1 << a) <= n
  div = n / (1 << a)


  l = 0
  r = 10**9
  while r - l > 1
    mid = (l + r) / 2
    if mid * mid <= div
      l = mid
    else
      r = mid
    end
  end

  m = l
  ans += (m + 1) / 2

  a += 1
end

puts ans
__END__
n = gets.to_i

h = {}

b = 1
while (sq = b**2) <= n
  a = 1

  while (sum = (1 << a) * sq) <= n
    h[sum] = true

    a += 1
  end
  b += 1
end

p h.size

__END__
n = gets.to_i

ary = Array.new(n+1, false)

a = 1
while 2**a <= n
  b = 1

  while (sum = (2**a) * (b**2)) <= n
    ary[sum] = true

    b += 1
  end

  a += 1
end

p ary.count(true)
__END__

正の整数Xは、次の条件を満たすときかつそのときに限り良い整数と呼ばれる。

- 正の整数の組み(a,b)を用いて X = 2^a * b^2 を満たす。

正の整数Nが与えられるので、1以上N以下の良い整数の個数を求めてください。
