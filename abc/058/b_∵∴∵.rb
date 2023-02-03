a, b = $<.map { _1.chomp.chars }
puts a.zip(b).map(&:join).join
