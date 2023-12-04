n, *a = $<.read.split.map(&:to_i)
puts a.uniq.size == 1 ? 'Yes' : 'No'
