t = gets.to_i

t.times do
  n = gets.to_i
  wp = []
  n.times do
    w, p = gets.split.map(&:to_i)
    wp << [w, p]
  end

  wp.sort_by!(&:sum)

  ws = [0]
  n.times { |i| ws << ws[-1] + wp[i][0] }

  ps = Array.new(n + 1, 0)
  (n - 1).downto(0) { |i| ps[i] = ps[i + 1] + wp[i][1] }

  ans = (0..n).bsearch { |mid| ps[mid] < ws[mid] } || (n + 1)
  puts ans - 1
end

__END__
t = gets.to_i

t.times do
  n = gets.to_i
  wp = Array.new(n) { gets.split.map(&:to_i) }

  wp.sort_by!(&:first)

  ws = Array.new(n + 1, 0)
  ps = Array.new(n + 1, 0)

  n.times { |i| ws[i + 1] = ws[i] + wp[i][0] }

  (n-1).downto(0) do |i|
    ps[i] = ps[i + 1] + wp[i][1]
  end

  l = 0
  r = n

  while l < r
    mid = (l + r + 1) / 2

    if ps[mid] >= ws[mid]
      l = mid
    else
      r = mid - 1
    end
  end

  puts l
end
