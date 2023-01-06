# 2倍かKを足すかで常に最小を取るようにする
# つまり貪欲法
n, k = $<.read.split.map(&:to_i)
ans = 1

n.times { ans = [ans * 2, ans + k].min }

puts ans
