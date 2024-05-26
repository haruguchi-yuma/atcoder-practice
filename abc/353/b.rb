n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

ans = 1
seat = k

a.each do |num|
  if seat < num
    seat = k
    ans += 1
  end

  seat -= num
end

p ans
