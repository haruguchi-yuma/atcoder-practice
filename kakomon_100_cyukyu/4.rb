n, m = gets.split.map(&:to_i)
a = Array.new(n) { gets.split.map(&:to_i) }

puts [*0...m].combination(2).map { |t1, t2|
  a.sum { |ary| [ary[t1], ary[t2]].max }
}.max


__END__
n, m = gets.split.map(&:to_i)
a = Array.new(n) { gets.split.map(&:to_i) }
ans = []
[*0...m].combination(2).each do |t1, t2|
  sum = 0

  n.times do |i|
    aa = a[i]
    sum += [aa[t1], aa[t2]].max
  end

  ans << sum
end

p ans.max
