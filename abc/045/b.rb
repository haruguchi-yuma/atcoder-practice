a = $<.map(&:chomp).map(&:chars)

turn = 0

loop do
  if a[turn].empty?
    puts [?A, ?B, ?C][turn]
    exit
  end

  card = a[turn].shift
  turn = card == 'a' ? 0 : card == 'b' ? 1 : 2
end
