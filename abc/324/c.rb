n, t = gets.chomp.split
n = n.to_i
t = t.chars
t_size = t.size
ans = []


ham = -> (s, t) {
  return 999 if s.size != t.size

  s.size.times.count { |i| s[i] != t[i] }
}

f = -> (s, t) {
  return false if s.size != t.size + 1
  si = 0
  t.size.times do |ti|
    si += 1 while si < s.size && s[si] != t[ti]
    return false if si == s.size
    si+= 1
  end

  true
}

n.times do |i|
  s = gets.chomp.chars
  s_size = s.size

  ok = false
  if s_size + 1 >= t_size
    ok = true if s == t
    ok = true if f[s, t]
    ok = true if f[t, s]
    ok = true if ham[s, t] <= 1
  end

  ans << i + 1 if ok
end

p ans.size
puts ans.join(' ')

