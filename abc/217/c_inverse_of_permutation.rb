n, *pe = $<.read.split.map(&:to_i)
ans = []
pe.each_with_index { |n, i| ans[n-1] = i + 1 }

puts ans * ' '
