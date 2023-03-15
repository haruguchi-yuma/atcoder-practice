n, k = gets.split.map(&:to_i)
pe = Array.new(n) { |i| [i, gets.split.map(&:to_i).sum] }

target = pe.sort_by { -1 * _2 }[k-1][1]

pe.each do |i, s|
  puts s >= target - 300 ? 'Yes' : 'No'
end
