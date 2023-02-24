# 個数を数える -200 ~ 200程度なので
# (aj - ai) ** 2 の組み合わせは ajの個数　* aiの個数　現れることを利用

n, *a = $<.read.split.map(&:to_i)
b = a.tally

ans = 0

b.to_a.combination(2).to_a.each do |ai, aj|
  ans += ((aj.first - ai.first) ** 2) * ai.last * aj.last
end

puts ans
