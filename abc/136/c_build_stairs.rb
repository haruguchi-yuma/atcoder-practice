n, *h = $<.read.split.map(&:to_i)

(n-1).times do |i|
  h[i+1] -= 1 if h[i] < h[i+1]

  return puts 'No' if h[i] > h[i+1]
end

puts 'Yes'
