n, m = gets.split.map(&:to_i)
s = gets.chomp

puts s.split('0').map { |str|
  one = str.count('1')
  str.size - [one, m].min
}.max || 0


__END__

(0..1000).each do |i|
  logo = i
  muji = m
  s.each do |j|
    if j == '1'
      break if muji < 0 || logo < 0

      if muji > 0
        muji -= 1
      else
        logo -= 1
        break if logo < 0
      end
    elsif j == '2'
      logo -= 1
      break if logo < 0
    elsif j == '0'
      logo = i
      muji = m
    end
  end
  break p i if logo >= 0 && muji >= 0
end
