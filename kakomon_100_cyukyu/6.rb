n = gets.to_i
s = gets.chomp.chars.map(&:to_i)
index = Hash.new { |h, k| h[k] = [] }
n.times { |i| index[s[i]] << i }


ans = 0
[*0..9].repeated_permutation(3) do |num|
  now = -1
  ans += 1 if num.all? { |i| now = index[i].bsearch { now < _1 } }
end
p ans
__END__

(0..999).each do |num|
  t = num.to_s.rjust(3, '0').chars.map(&:to_i)
  now = -1

  3.times do |i|
    break unless now = index[t[i]].bsearch { now < _1 }
  end

  ans += 1 if now
end

# このパターンでもいい
('000'..'999').each do |t|
  t = t.chars.map(&:to_i)
  now = -1

  3.times do |i|
    break unless now = index[t[i]].bsearch { now < _1 }
  end

  ans += 1 if now
end

p ans

__END__
n = gets.to_i
s = gets.chomp

ans = 0
10.times do |i|
  next if (x = s.index(i.to_s)).nil?

  10.times do |j|
    next if (y = s.index(j.to_s, x+1)).nil?

    10.times do |k|
      next if (z = s.index(k.to_s, y+1)).nil?

      ans += 1
    end
  end
end

p ans
