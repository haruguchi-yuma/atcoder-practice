# l.sum - l.max > l.max を等式変形した
n, *l = $<.read.split.map(&:to_i)
puts l.sum > 2 * l.max ? 'Yes' : 'No'
