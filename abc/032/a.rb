a,b,n=$<.map(&:to_i)
puts (n..).lazy.select { _1 % a == 0 && _1 % b == 0 }.take(1).force

__END__
2
3
8
