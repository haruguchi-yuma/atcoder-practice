s = gets.chomp.chars

t = gets.chomp.chars
m = t.size

ans = Array.new(m+1, true)
2.times do
  ok = true
  m.times { |i|
    ok = false if s[i] != t[i] && s[i] != '?' && t[i] != '?'
    ans[i+1] = false if !ok
  }
  s.reverse!
  t.reverse!
  ans.reverse!
end

(m+1).times { |i| puts ans[i] ? 'Yes' : 'No'}
