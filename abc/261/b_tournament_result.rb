# 2重ループ
n = gets.to_i
a = Array.new(n) { gets.chomp.chars }
n.times do |i|
  (i...n).each do |j|
    next if i == j && a[i][j] == '-'
    if a[i][j] == 'W'
      return puts 'incorrect' if a[j][i] != 'L'
    elsif a[i][j] == 'L'
      return puts 'incorrect' if a[j][i] != 'W'
    elsif a[i][j] == 'D'
      return puts 'incorrect' if a[j][i] != 'D'
    end
  end
end

puts 'correct'
