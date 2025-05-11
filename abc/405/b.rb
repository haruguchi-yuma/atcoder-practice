n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
cnt = 0


loop do
  res = [*1..m] - a
  if !res.empty?
    puts cnt
    exit
  end

  cnt += 1
  a.pop
end
