class Array
  def next_permutation!
    return if self.empty?

    n = self.size

    i = nil
    (n-1).downto(1) do |idx|
      break i = idx - 1 if self[idx-1] < self[idx]
    end

    i.nil? && self.reverse! && return

    pi = self[i]
    j = self.rindex { |num| pi < num }

    self[i], self[j] = self[j], self[i]
    self[i+1..] = self[i+1..].reverse!

    self
  end
end

n, k = gets.split.map(&:to_i)
s = gets.chomp.chars
cnt = s.tally
if cnt.values.all?(1)
  p (1..n).inject(:*) # n!
  exit
end

s.sort!
ans = 0

begin
  ok = true
  (n-k+1).times do |i|
    sub = s[i, k]
    ok = false if sub == sub.reverse
  end

  ans += 1 if ok
end while s.next_permutation!

p ans

__END__
n, k = gets.split.map(&:to_i)
s = gets.chomp.chars

cnt = s.tally

def f(t, cnt, n, k)
  if t.size >= k
    u = t[-k..]
    return 0 if u == u.reverse
  end

  return 1 if t.size == n

  res = 0

  cnt.each do |c, num|
    if num > 0
      cnt[c] -= 1
      res += f(t+c, cnt, n, k)
      cnt[c] += 1
    end
  end

  res
end

if cnt.values.all?(1)
  p (1..n).inject(:*) # n!
  exit
end

puts f('', cnt, n, k)
