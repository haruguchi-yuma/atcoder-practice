n = gets.to_i
h = Hash.new
a = Array.new(n) { gets.split }

a.each do |s, t|
  h[s] ||= t
end

puts a.index(h.max_by { _2.to_i }) + 1
