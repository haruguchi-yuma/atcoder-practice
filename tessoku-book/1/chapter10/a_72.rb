h, w, k = gets.split.map(&:to_i)
c = Array.new(h) { gets.chomp.chars }
tally = c.map { _1.count('#') }.sort
cnt = 0
p tally.sum { cnt += 1; cnt <= k ? w : _1 }
