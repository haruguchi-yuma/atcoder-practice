a,b,c,d=gets.split.map(&:to_i)
# puts b*c > a*d ? 'TAKAHASHI' : b*c < a*d ? 'AOKI' : 'DRAW'
puts %w(DRAW TAKAHASHI  AOKI)[b*c<=>a*d]
__END__
b/a > d/c ? 'takahashi' : 'aoki'


