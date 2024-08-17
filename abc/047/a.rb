a = gets.split.map(&:to_i).sort
puts a[-1] == a[0..1].sum ? 'Yes' : 'No'
