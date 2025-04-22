
n = gets.to_i
P = gets.split.map(&:to_i)
Q = gets.split.map(&:to_i)

dict = {}

[*1..n].permutation(n).each_with_index do |ary, i|
  dict[ary.join] = i+1
end


p (dict[P.join] - dict[Q.join]).abs
