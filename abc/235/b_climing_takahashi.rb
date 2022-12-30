n, *h = $<.read.split.map(&:to_i)
puts h.chunk_while { _1 < _2 }.first.last
