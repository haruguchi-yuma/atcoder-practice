s, t = $<.read.split.map(&:chars)
puts s.sort!.join < t.sort.reverse!.join ? 'Yes' : 'No'
