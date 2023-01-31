s = Array.new(10) { gets.chomp.chars }

result = []
10.times do |i|
  10.times do |j|
    result << [i+1, j+1] if s[i][j] == '#'
  end
end

if result.size == 1
  puts result.flatten.zip(*result).map{ _1.join(' ') }
else
  first, *, last = result
  puts first.zip(last).map{ _1.join(' ') }
end
