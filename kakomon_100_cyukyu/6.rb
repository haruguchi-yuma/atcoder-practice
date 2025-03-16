n = gets.to_i
s = gets.chomp

puts (0..999).sum { |num|
  str = num.to_s.rjust(3, '0')

  # Sの部分文字列探索
  pos = 0
  s.each_char do |c|
    pos += 1 if str[pos] == c
  end

  pos == 3 ? 1 : 0
}
