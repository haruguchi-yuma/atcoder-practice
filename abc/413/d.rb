def solve(a, n)
  a.sort_by!(&:abs)

  return true if a.each_cons(3).all? { |a1, a2, a3| a2 ** 2 == a1 * a3 }

  if a.first.abs == a.last.abs
    return true if (n - 2 * a.count(&:negative?)).abs <= 1
  end

  false
end

t = gets.to_i
t.times do
  n = gets.to_i
  a = gets.split.map(&:to_i)

  puts solve(a, n) ? "Yes" : "No"
end
