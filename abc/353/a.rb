n, *h = $<.read.split.map(&:to_i)

n.times do |i|
  if h[0] < h[i]
    p i + 1
    exit
  end
end

p -1
