# 4ab + 3(a + b), S <= 1000から 150くらいまで調べればいいことがわかる

n, *S = $<.read.split.map(&:to_i)
list = []
(1..150).each do |a|
  (1..150).each do |b|
    menseki = 4 * a * b + 3 * (a + b)
    break if menseki > 1000
    list << menseki
  end
end
puts (S - list).size

