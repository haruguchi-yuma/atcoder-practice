n = gets.to_i
p n.to_s(2)[/0+$/]&.size || 0


__END__
ビット演算でやる

ans = 0
while n&1 == 0
  ans += 1
  n >>= 1
end

p ans
