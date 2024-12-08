INIT = 10 ** 6
n = gets.to_i

is_prime = Array.new(INIT, true)
is_prime[0] = false
is_prime[1] = false

(2..Integer.sqrt(INIT)).each do |i|
  next unless is_prime[i]
  num = i

  while (num += i) < INIT
    is_prime[num] = false
  end
end

primes = is_prime.filter_map.with_index { |b, i| i if b }

ans = 0

primes.each do |p1|
  primes.each do |p2|
    break if p2 >= p1
    break if p1*p1*p2*p2 > n

    ans += 1
  end
end

primes.each do |p|
  x = 1
  8.times { x *= p }
  break if x > n

  ans += 1
end

p ans
