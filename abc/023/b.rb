p~-`dd`[/.*
((?=ab|bc|ca).\g<1>.|b)$/].to_i/2
__END__
n = gets.to_i
s = gets.chomp
t = 'b'

cnt = 0
while t.size <= n
  break if t == s

  cnt += 1
  if cnt % 3 == 1
    t = ?a + t + ?c
  elsif cnt % 3 == 2
    t = ?c + t + ?a
  else
    t = ?b + t + ?b
  end
end

p s == t ? cnt : -1
