(h, n), a = $<.map { _1.split.map(&:to_i) }
puts a.sum >= h ? 'Yes' : 'No'
