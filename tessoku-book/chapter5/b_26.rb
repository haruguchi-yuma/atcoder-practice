n = gets.to_i

deleted = Array.new(n+1, false)
deleted[0] = true
deleted[1] = true

(2..Integer.sqrt(n)).each do |i|
  next if deleted[i]

  res = i
  while (res += i) <= n
    deleted[res] = true
  end
end

deleted.each_with_index { |n, i| puts i if !n }
