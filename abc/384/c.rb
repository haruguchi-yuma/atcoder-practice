a = gets.split.map(&:to_i)
ans = []

(1<<5).times do |bit|
  next if bit == 0

  score = 0
  name = ''

  5.times do |i|
    if bit[i] == 1
      score += a[i]
      name += ('A'.ord + i).chr
    end
  end

  ans << [-score, name]
end

puts ans.sort.map(&:last)


__END__
a, b, c, d, e = gets.split.map(&:to_i)

score = {
  'A' => a,
  'B' => b,
  'C' => c,
  'D' => d,
  'E' => e
}

al = %w[A B C D E]

res = (1..5).flat_map { |i|
  al.combination(i).map { |ary|
    [ary.join, ary.sum { |c| score[c] }]
  }
}

puts res.sort_by { [-_2, _1]}.map(&:first)

__END__
# bit 全探索　と sort は　スコアを最初からマイナスにして計算すると楽

a, b, c, d, e = gets.split.map(&:to_i)
ans = []

(1<<5).tiems do |bit|
  next if bit == 0

  score = 0
  name = ''

  5.times.map do |i|
    if bit[i] == 1
      score += a[i]
      name += ('A'.ord + i).chr
    end
  end

  ans << [-score, name]
end

puts ans.sort.map(&:last)

