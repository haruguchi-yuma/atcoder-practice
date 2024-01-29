n, m = gets.split.map(&:to_i)
a = Array.new(m) { gets; gets.split.map{ _1.to_i - 1 } }

# どの色がどの筒に入っているかの情報
pos = Array.new(n) { [] }

m.times do |i|
  a[i].each { |c| pos[c] << i }
end

# 筒の先頭にどの色がいくつ入っているかの情報
cnt = Array.new(n, 0)

que = []

m.times do |i|
  t = a[i][0]
  cnt[t] += 1
end

# queの更新
n.times { |i| que << i if cnt[i] == 2}

take = 0

while x = que.shift

  take += 1
  # 筒から取り出す
  2.times do |i|
    pi = pos[x][i]
    a[pi].shift
    unless a[pi].empty?
      t = a[pi][0]
      cnt[t] += 1
      que << t if cnt[t] == 2
    end
  end
end

puts take == n ? 'Yes' : 'No'

__END__
4 3
3
3 1 4
3
3 1 2
2
2 4
