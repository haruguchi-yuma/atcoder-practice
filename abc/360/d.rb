_, t = gets.split.map(&:to_i)
s = gets.chomp.chars.map(&:to_i)

neg = []
pos = []

gets.split.map(&:to_i).each_with_index do |xx, i|
  s[i] == 0 ? neg << xx : pos << xx
end

neg.sort!
pos.sort!

left_count = -> (r) {
  return pos.bsearch_index { r <= _1 } || pos.size
}

ans = 0
neg.each do |x|
  l = x - 2*t
  r = x

  ans += left_count[r] - left_count[l]
end

p ans
__END__
n, t = gets.split.map(&:to_i)
s = gets.chomp.chars.map(&:to_i)
x = gets.split.map(&:to_i)
a = []
n.times do |i|
  a << [x[i], s[i]]
end

a = a.sort_by(&:first)

i = 0
s = a.map { i += _1[1] }

r = 0
ans = 0
n.times do |l|
  next if a[l][1] == 0

  while r < n - 1 && a[r+1][0] - a[l][0] <= t * 2
    r += 1
  end

  ans += r - l - (s[r]- s[l])
end

p ans
