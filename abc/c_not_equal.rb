# cの順番は気にしないのでsortしてから計算すると考えやすい
n, *a = $<.read.split.map(&:to_i)
i = 0
ans = 1
a.sort.each do |num|
  ans = [ans * (num - i), 0].max % (10 ** 9 + 7)
  i += 1
end

p ans
