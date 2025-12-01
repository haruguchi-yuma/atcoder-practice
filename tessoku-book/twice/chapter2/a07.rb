d = gets.to_i
n = gets.to_i

s = Array.new(d+1, 0)

n.times do
  l, r = gets.split.map(&:to_i)
  s[l-1] += 1
  s[r] -= 1
end

ans = 0
puts d.times.map { ans += s[_1]; ans }


__END__
8
5
2 3
3 6
5 7
3 7
1 5
