(n, k, m), score = $<.map { _1.split.map(&:to_i) }

ans = [m * n - score.sum, 0].max
puts ans > k ? -1 : ans
