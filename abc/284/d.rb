t = gets.to_i

def solve()
  n = gets.to_i
  (2..).each do |x|
    next if n % x != 0
    n /= x
    if n % x ==0
      puts [x, n/x].join(' ')
      return
    end

    pi = Integer.sqrt(n)
    puts [pi, x].join(' ')
    return
  end
end

t.times do
  solve
end

