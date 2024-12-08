h, w, d = gets.split.map(&:to_i)
s = Array.new(h) { gets.chomp.chars }

ans = 0

h.times do |i1|
  w.times do |j1|
    next if s[i1][j1] == '#'

    h.times do |i2|
      w.times do |j2|
        next if s[i2][j2] == '#'
        next if [i1, j1] == [i2, j2]

        cnt = 0
        h.times do |i|
          w.times do |j|
            next if s[i][j] == '#'
            humid = false
            humid = true if (i-i1).abs + (j-j1).abs <= d
            humid = true if (i-i2).abs + (j-j2).abs <= d

            cnt += 1 if humid
          end
        end

        ans = [ans, cnt].max
      end
    end
  end
end

p ans
