s = gets.chomp.chars
size = s.size

a = Array.new(10) { [0] * (size+1) }

size.times do |i|
  c = s[i].to_i
  10.times do |j|
    if j == c
      a[j][i+1] = (a[j][i] + 1) % 2
    else
      a[j][i+1] = a[j][i]
    end
  end
end

pp a.transpose.tally.values.sum { |n| n * (n-1) / 2 }

__END__
20230322

