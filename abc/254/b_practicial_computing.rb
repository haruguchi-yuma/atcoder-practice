# パスカルの三角形
# i行j列　の数は上段2つの数の和　a[i][j] = a[i-1][j-1] + a[i-1][j]
# ただし、列の最初と最後は 1
n = gets.to_i

a = Array.new(n) { [0] * (_1 + 1) }

(0...n).each do |i|
  (0..i).each do |j|
    a[i][j] = j == 0 || j == i ? 1 : a[i-1][j-1] + a[i-1][j]
  end
end

puts a.map{ _1.join(' ') }

# もしくは2項定理を考える

n = gets.to_i

n.times do |i|
  puts (0..i).map { [*1..i].combination(_1).size } * ' ' # ここがnCkになっている
end
