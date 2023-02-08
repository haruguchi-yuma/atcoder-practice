n, *a = $<.read.split.map(&:to_i)

puts a.map { _1.to_s(2)[/0*\z/].size }.min
