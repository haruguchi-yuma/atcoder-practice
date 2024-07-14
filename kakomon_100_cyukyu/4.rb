n, m = gets.split.map(&:to_i)
a = Array.new(n) { gets.split.map(&:to_i) }

puts [*0...m].combination(2).map { |t1, t2|
  a.sum { |ary| [ary[t1], ary[t2]].max }
}.max
