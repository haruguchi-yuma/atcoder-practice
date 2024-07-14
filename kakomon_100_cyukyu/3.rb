s = gets.chomp
p s.scan(/[AGCT]*/).map(&:size).max


__END__
s = gets.chomp
n = s.size

n.downto(1) do |i|
  (n - i + 1).times do |j|
    if s[j, i][/[^AGCT]/].nil?
      puts s[j, i].size
      exit
    end
  end
end

puts 0
