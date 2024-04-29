h, w = gets.split.map(&:to_i)
s = Array.new(h) { gets.chomp.chars }

di = [-1, 0, 1, 0]
dj = [ 0, -1, 0, 1]

# マグネットおよびマグネットに隣接する位置の記録
x = Array.new(h) { Array.new(w, false) }

h.times do |i|
  w.times do |j|
    next if s[i][j] == '.'

    x[i][j] = true
    4.times do |v|
      ni = i + di[v]
      nj = j + dj[v]
      next if ni < 0 || nj < 0 || ni >= h || nj >= w
      x[ni][nj] = true
    end
  end
end

# マスを訪れた/訪れてない
used = Array.new(h) { Array.new(w, false) }
# マグネットどの連結成分で見たか(いつ見たか)
last = Array.new(h) { Array.new(w, 0) }
tm = 0

ans = 1;

h.times do |si|
  w.times do |sj|
    next if x[si][sj]
    next if used[si][sj]
    tm += 1

    cnt = 0
    que = [[si, sj]]
    used[si][sj] = true

    while (i, j = que.shift)
      cnt += 1
      4.times do |v|
        ni = i + di[v]
        nj = j + dj[v]
        next if ni < 0 || nj < 0 || ni >= h || nj >= w
        next if used[ni][nj]
        if x[ni][nj]
          if last[ni][nj] != tm # 見たターン数が違うならば数える（同一連結成分)
            cnt += 1
            last[ni][nj] = tm
          end

          next
        end

        que << [ni, nj]
        used[ni][nj] = true
      end
    end

    ans = [ans, cnt].max
  end
end

p ans
