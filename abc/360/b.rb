s, t = gets.chomp.split
s = s.chars
n = s.size

(1...n).each do |w|
  str = s.each_slice(w).to_a

  if str[0].zip(*str[1..]).map(&:join).any? { _1 == t }
    puts 'Yes'
    exit
  end
end

puts 'No'
