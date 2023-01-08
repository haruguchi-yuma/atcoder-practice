n = gets.to_i
ao = Array.new(n) { gets.chomp }
m = gets.to_i
aka = Array.new(m) { gets.chomp }

score = ao.tally

aka.each do
  score[_1] && score[_1] -= 1
end

puts [0, score.max_by { _2 }.last].max
