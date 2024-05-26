N, t = gets.split.map(&:to_i)
a = gets.split.map { _1.to_i.pred }
col = Array.new(N, 0)
row = Array.new(N, 0)
dia = [0, 0]

def check(ary, i, ti)
  ary[i] += 1
  if ary[i] == N
    p ti + 1
    exit
  end
end

t.times do |ti|
  i, j = a[ti].divmod(N)

  check(row, i, ti)
  check(col, j, ti)
  check(dia, 0, ti) if i == j
  check(dia, 1, ti) if i+j == N - 1
end

p -1

__END__
n, t = gets.split.map(&:to_i)
a = gets.split.map { _1.to_i - 1 }

col = Array.new(n) { [false] * n }
row = Array.new(n) { [false] * n }
diagonal = Array.new(2) { [false] * n }

a.each_with_index do |num, i|
  c, r = num.divmod(n)
  col[c][r] = true
  if col[c].all?
    puts i + 1
    exit
  end
  row[r][c] = true
  if row[r].all?
    puts i + 1
    exit
  end

  if num % (n + 1) == 0
    diagonal[0][c] = true
    if diagonal[0].all?
      puts i + 1
      exit
    end
  end

  if num != 0 && num % (n - 1) == 0
    diagonal[1][c-1] = true
    if diagonal[1].all?
      puts i + 1
      exit
    end
  end
end

puts -1
