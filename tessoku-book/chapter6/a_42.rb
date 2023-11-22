n, k = gets.split.map(&:to_i)
ab = Array.new(n) { gets.split.map(&:to_i) }
a_min, a_max = ab.map(&:first).minmax
b_min, b_max = ab.map(&:last).minmax

ans = []
(a_min..a_max).each do |a|
  (b_min..b_max).each do |b|
    cnt = 0
    n.times do |i|
      aa, bb = ab[i]
      cnt += 1 if a <= aa && aa <= a + k && b <= bb && bb <= b + k
    end
    ans << cnt
  end
end

p ans.max
