w,h = gets.split.map(&:to_i)
puts w / 4 == h / 3 ? '4:3' : '16:9'
