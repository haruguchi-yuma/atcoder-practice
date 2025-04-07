n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

ans = Float::INFINITY

(1<<n).times do |bit|
  next if bit.to_s(2).count('1') != k
  next if bit[0] == 0

  max = cost = 0

  n.times do |i|
    now = a[i]
    max = [max, now].max

    if bit[i] == 1
      cost += max - now
      max += 1
    end
  end

  ans = [ans, cost].min
end

p ans
