n = gets.to_i
ab = Array.new(n) { gets.split.map(&:to_i) }

ans = []
ans << ab.select { |a, b| a + b > 0 }.sum(&:sum)
ans << ab.select { |a, b| a - b > 0}.sum { |a, b| a - b }
ans << ab.select { |a, b| -1 * a + b > 0}.sum { |a, b| -1 * a + b }
ans << ab.select { |a, b| -1 * a - b > 0}.sum { |a, b| -1 * a - b }

p ans.max
