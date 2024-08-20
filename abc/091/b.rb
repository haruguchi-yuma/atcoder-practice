n,*t=*$<;p ([p]|s=t.shift(eval n)).map{|x|s.count(x)-t.count(x)}.max
__END__
n = gets.to_i
s = Array.new(n) { gets.chomp }.tally
m = gets.to_i
t = Array.new(m) { gets.chomp }

p [s.map { |k, v| v - t.count(k) }.max, 0].max
