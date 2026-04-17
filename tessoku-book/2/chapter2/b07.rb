t = gets.to_i
n = gets.to_i
s = Array.new(t+1, 0)

n.times do
  l, r = gets.split.map(&:to_i)
  s[l] += 1
  s[r] -= 1
end

ans = 0
t.times { ans += s[_1]; p ans }
__END__
10
7
0 3
2 4
1 3
0 3
5 6
5 6
5 6
