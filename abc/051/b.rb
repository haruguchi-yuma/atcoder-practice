k, s = gets.split.map(&:to_i)

cnt = 0
(0..k).each do |x|
  (0..k).each do |y|
    z = s - x - y

    next if z < 0 || z > k

    cnt += 1
  end
end

p cnt
