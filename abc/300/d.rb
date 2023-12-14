M = 1_000_000
n = gets.to_i

def fetch_prime_list(max)
  table = Array.new(max + 1,true)
  prime_list = []

  (2..max).each do |num|
    if table[num] == true
      prime_list << num
      k = num * num
      while k <= max
        table[k] = false
        k += num
      end
    end
  end

  prime_list
end

primes = fetch_prime_list(M)
size = primes.size

ans = 0
size.times do |ai|
  a = primes[ai]
  break if a*a*a*a*a > n

  (ai.succ..size).each do |bi|
    b = primes[bi]
    break if a*a*b*b*b > n

    (bi.succ..size).each do |ci|
      c = primes[ci]
      break if a*a*b*c*c > n
      ans += 1
    end
  end
end

p ans
