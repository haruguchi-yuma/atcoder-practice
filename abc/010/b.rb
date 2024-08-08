gets;p gets.split.map(&:to_i).sum{[3,0,1,0,1,2][_1%6]}
__END__
n = gets.to_i
a = gets.split.map(&:to_i)
p a.sum{(_1+3)%6%4}
__END__
n = gets.to_i
a = gets.split.map(&:to_i)

puts a.sum { |num|
  if num % 6 == 0
    3
  elsif num % 6 == 5
    2
  elsif num % 2 == 0
    1
  else
    0
  end
}
__END__
1  ok ok → ok 1+3%6%4 0
2  ng ng → ng 2+3%6%4 1
3  ok ok → ok 3+3%6%4 0
4  ng ok - ng 4+3%6%4 1
5  ok ng → ng 2
6  ng ok → ng 3
7  ok ok → ok 0
8  ng ng → ng 1
9  ok ok → ok 0
10 ng ok → ng 1
11 ok ng → ng 2
12 ng ok → ng 3
13 ok ok → ok 0
14 ng ng → ng 1
15 ok ok → ok 0
16 ng ok → ng 1
17 ok ng → ng 2
18 ng ok → ng 3
19 ok ok → ok 0
