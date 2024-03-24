w , b = gets.split.map(&:to_i)
n = w + b
s = 'wbwbwwbwbwbw'
m = s.size

# ドから調べる、ド#から調べる、レから調べる、、、、12音階で調べる
m.times do |si|
  cnt = 0

  # (w + b)個　調べてwの個数が一致すれば自動的にbの個数は一致
  # なのでwの個数だけ数えればいい。
  n.times do |i|
    cnt += 1 if s[(si+i) % m] == 'w'
  end

  if cnt == w
    puts 'Yes'
    exit
  end
end

puts 'No'

__END__
t = s * 100
m.times do |si|
  cnt = 0

  # (w + b)個　調べてwの個数が一致すれば自動的にbの個数は一致
  # なのでwの個数だけ数えればいい。
  n.times do |i|
    cnt += 1 if t[si+i] == 'w'
  end

  if cnt == w
    puts 'Yes'
    exit
  end
end

puts 'No'
