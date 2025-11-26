n, *a = $<.read.split.map(&:to_i)

h = a.sort.uniq.each_with_index.to_h

puts a.map { h[_1].succ } * ' '



__END__
n, *a = $<.read.split.map(&:to_i)
a = a.each_with_index.to_a.sort_by(&:first)

i = 0
before = 0

puts a.map { |num, order|
  res =
    if num == before
      [i, order]
    else
      [i += 1, order]
    end

  before = num
  res
}.sort_by(&:last).map(&:first) * ' '




__END__
5
46 80 11 77 46
