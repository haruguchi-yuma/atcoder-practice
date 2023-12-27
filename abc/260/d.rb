n, k, *pi = $<.read.split.map(&:to_i)
tops = []
ans = Array.new(n, -1)

pi.each_with_index do |c, i|
  index = tops.bsearch_index { _1.last >= c }
  if index.nil?
    tops << [c]
    index = tops.size - 1
  else
    tops[index] << c
  end

  if tops[index].size == k
    tops[index].each do |j|
      ans[j-1] = i+1
    end
    tops.delete_at(index)
  end
end

puts ans


__END__
5 2
3 5 2 1 4
