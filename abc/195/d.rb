n, m, q = gets.split.map(&:to_i)
wv = Array.new(n) { gets.split.map(&:to_i) }.sort_by(&:last).reverse
x = gets.split.map(&:to_i)


q.times do
  list = Array.new(n, true)
  l, r = gets.split.map(&:to_i)
  ans = 0
  x.each.with_index(1) do |xx, i|
    next if (l..r).cover?(i)
    wv.each_with_index do |(w, v), j|
      next unless list[j]
      if xx >= w
        ans += v
        list[j] = false
        break
      end
    end
  end
  p ans
end
