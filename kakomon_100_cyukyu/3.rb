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

# 別解2
s = gets.chomp.chars
size = s.size

ans = []

(0...size).each do |i|
  (0...size).each do |j|
    ans << s[i..j].size if /\A[ACGT]+\z/ =~ s[i..j].join
  end
end

p ans.max
