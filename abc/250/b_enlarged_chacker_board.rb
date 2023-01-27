# 偶奇性を利用
n, a, b = gets.split.map(&:to_i)
ary = Array.new(n*a) { [] * (n * b) }

(n*a).times do |i|
  (n*b).times do |j|
    ary[i][j] = (i / a + j / b).even? ? '.' : '#'
  end
end

puts ary.map(&:join)

# 地道に1行ずつ作っていく

n, a, b = gets.split.map(&:to_i)
str = ''
n.times do |i|
  a.times do |j|
    n.times do |k|
      if i.even?
        str += k.even? ? '.' * b : '#' * b
      else
        str += k.even? ? '#' * b : '.' * b
      end
    end
    str += "\n"
  end
end
puts str
