n, *a = $<.read.split.map(&:to_i)
puts a.tally.sum { |k, v| v * (v-1) * (v-2) / 6 }
