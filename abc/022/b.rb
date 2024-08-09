p gets.to_i-([*$<]|[]).size
__END__
n,*a = $<.map(&:to_i)
p a.tally.values.sum(&:pred)
