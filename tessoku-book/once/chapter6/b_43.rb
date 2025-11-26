n, m, *a = $<.read.split.map(&:to_i)

cnt = a.tally
n.times { |i| p m - (cnt[i+1] || 0) }
