n, x = gets.split.map(&:to_i)
a = gets.chomp.chars

que =[]
used = []

a[x-1] = '@' if a[x-1] == '.'
que << x-1
used[x-1] = true

while r = que.shift
  if !used[r-1] && a[r-1] == '.'
    que << r-1
    used[r-1] = true
    a[r-1] = '@'

  end
  if !used[r+1] && a[r+1] == '.'
    que << r+1
    used[r+1] = true
    a[r+1] = '@'
  end
end

puts a.join
