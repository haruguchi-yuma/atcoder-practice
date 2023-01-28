# そのままシミュレーションしたコマには番号をつけた

n, k, q = gets.split.map(&:to_i)
ary = Array.new(n) { false }

gets.split.map(&:to_i).each_with_index do |i, j|
  ary[i-1] = j
end

gets.split.map(&:to_i).each do |i|
  index = ary.index(i-1)
  if !ary[index + 1] && index + 1 < n
    ary[index + 1] = i - 1
    ary[index] = false
  end
end

puts ary.map.with_index { |n, i| n != false ? i + 1 : nil }.compact * ' '

# こっちの方がシンプル
n, k, q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
l = gets.split.map(&:to_i)

q.times do |i|
  next if a[l[i]-1] == n #一番右端なら動かさない
  if l[i] == k # 最後のコマなら必ず動かす（上で右端を除いているので)
    a[l[i]-1] += 1
  elsif a[l[i]-1] + 1 < a[l[i]] # コマの1つ右の位置　< 次のコマの位置
    a[l[i]-1] += 1
  end
end

puts a * ' '
