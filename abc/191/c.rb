h, w = gets.split.map(&:to_i)
s = Array.new(h) { gets.chomp.chars }

ans = 0

(h-1).times do |i|
  (w-1).times do |j|
    cnt = 0

    2.times do |di|
      2.times do |dj|
        cnt += 1 if s[i+di][j+dj] == '#'
      end
    end

    ans += 1 if cnt == 1 || cnt == 3
  end
end

p ans
