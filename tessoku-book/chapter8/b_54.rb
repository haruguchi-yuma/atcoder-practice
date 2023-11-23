_, *s = $<.map(&:to_i)
p s.tally.sum { |k, v| v * (v-1) / 2}


__END__
6
30
10
30
20
10
30
