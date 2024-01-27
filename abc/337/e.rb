n = gets.to_i
m = 0

m += 1 while (1 << m) < n
$>.puts m

m.times do |i|
  a = []
  n.times do |j|
    a << j if j[i] == 1
  end
  $>.puts [a.size, *a.map(&:succ)].join(' ')
end

$>.flush
s = gets.chomp.chars
ans = 0
m.times do |i|
  ans |= (1<<i) if s[i] == '1'
end
$>.puts ans + 1
