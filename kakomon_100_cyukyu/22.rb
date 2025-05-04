pi = gets.to_f

epsilon = 1e-9
left = 0.0
right = 100.0

f = -> (x) { x + pi / (2 ** (x / 1.5))}
ans = 0
while right - left > epsilon
  mid1 = left + (right - left) / 3.0
  mid2 = right - (right - left) / 3.0

  f_mid1 = f[mid1]
  f_mid2 = f[mid2]

  if f_mid1 > f_mid2
    left = mid1
  else
    right = mid2
  end

  x = (left + right) / 2.0
  ans = f[x]
end

p ans
