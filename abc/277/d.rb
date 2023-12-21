n, m, *a = $<.read.split.map(&:to_i)
total = a.sum

a.sort!
if a[-1] == (m-1) && a[0] == 0
  a = a.concat(a)
end

p [total - a.chunk_while { (_2 - _1) % m <= 1 }.map(&:sum).max, 0].max


__END__
9 7
0 1 2 3 4 5 6 6 6

