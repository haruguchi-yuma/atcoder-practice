n = gets.to_i
ans = 0

n.times do |i|
  ta = gets.chomp
  ans = eval("ans #{ta}") % 10000
  ans += 10000 if ans < 0
  puts ans
end

__END__
4
+ 57
+ 43
* 100
- 1
