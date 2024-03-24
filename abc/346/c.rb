n , k, *a = $<.read.split.map(&:to_i)
p (1..k).sum - a.uniq.select{ _1 <= k }.sum
