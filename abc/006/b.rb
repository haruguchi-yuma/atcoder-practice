a, b, c = 0, 0, 1
(gets.to_i-1).times { |i| a,b,c=b,c,(a+b+c)%10007 }
p a

__END__
MOD=10007
n = gets.to_i

a = [0, 0, 0, 1]

(4..n).each do |i|
  a[i] = (a[i-3] + a[i-2] + a[i-1]) % MOD
end

p a[n]
