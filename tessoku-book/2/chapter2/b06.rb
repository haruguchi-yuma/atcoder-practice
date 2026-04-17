n = gets.to_i
a = gets.split.map(&:to_i)
i = 0
s = [0] + a.map { i += _1 }
q = gets.to_i

q.times do
  l, r = gets.split.map(&:to_i)
  atari = s[r] - s[l-1]
  hazure = (r - (l-1)) - atari
  puts atari == hazure ? 'draw' : atari > hazure ? 'win' : 'lose'
end

__END__
7
0 1 1 0 1 0 0
3
2 5
2 7
5 7
