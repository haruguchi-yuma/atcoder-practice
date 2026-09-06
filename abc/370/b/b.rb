n = gets.to_i

a = Array.new(n) { gets.split.map(&:to_i) }

now = 0
n.times do |i|
  if i >= now
     now = a[i][now] - 1
  else
    now = a[now][i] - 1
  end
end

p now + 1
