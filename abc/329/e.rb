n, m = gets.split.map(&:to_i)
s = gets.chomp.chars
t = gets.chomp.chars

que = []
used = []

push = -> (i) {
  return if i < 0 || i + m > n
  return if used[i]

  m.times do |j|
    return if s[i+j] != '?' && s[i+j] != t[j]
  end

  used[i] = true
  que << i
}

(n-m+1).times { push[_1] }

while i = que.shift
  m.times { |j| s[i+j] = '?' }
  (i-m+1..i+m-1).each do |ni|
    push[ni]
  end
end

puts s.all?('?') ? 'Yes' : 'No'
