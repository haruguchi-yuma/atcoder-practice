n, k, *a = $<.read.split.map(&:to_i)
i = 0
s = [0] + a.map{ i += _1 }

cnt = 0
n.times do |i|
  m = s[i]
  cnt += (s.bsearch_index { _1 - m > k} || n + 1) - (i + 1)
end

p cnt

__END__
7 50
11 12 16 22 27 28 31
