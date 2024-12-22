n, r = gets.split.map(&:to_i)

n.times do |i|
  case gets.split.map(&:to_i)
  in [1, a]
    r += a if (1600..2799) === r
  in [2, a]
    r += a if (1200..2399) === r
  end
end

p r
