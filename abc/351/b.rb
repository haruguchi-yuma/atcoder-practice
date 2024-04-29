n = gets.to_i

a = Array.new(n) { gets.chomp.chars }
b = Array.new(n) { gets.chomp.chars }

n.times do |i|
  n.times do |j|
    puts [i+1, j+1] if a[i][j] != b[i][j]
  end
end
