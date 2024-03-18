s = gets.chomp.chars
n = s.size

def c2(n)
  n*(n-1)/2
end

cnt = s.tally
same = 0
cnt.each { |k, v| same += c2(v) }

diff = c2(n) - same

ans = diff
ans += 1 if same > 0

p ans
