n, *a = $<.read.split.map(&:to_i)
puts a.inject(:^) == 0 ? 'Second' : 'First'
