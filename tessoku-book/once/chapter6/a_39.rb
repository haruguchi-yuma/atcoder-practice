n = gets.to_i

lr = Array.new(n) { gets.split.map(&:to_i) }

now = 0
cnt = 0
lr.sort_by(&:last).each do |start, finish|
  next if now > start

  cnt += 1
  now = finish
end

p cnt
__END__
5
0 4
1 2
3 7
5 9
7 8

