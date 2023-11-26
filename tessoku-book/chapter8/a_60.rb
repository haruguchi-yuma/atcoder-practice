n, *a = $<.read.split.map(&:to_i)
stack = []
ans = []


n.times do |i|
  if i >= 1
    stack << [i, a[i-1]]
    while !stack.empty?
      kabuka = stack[-1][1]
      if kabuka <= a[i]
        stack.pop
      else
        break
      end
    end
  end

  if !stack.empty?
    ans[i] = stack[-1][0]
  else
    ans[i] = -1
  end
end

puts ans.join(' ')

__END__
6
6 2 5 3 1 4

