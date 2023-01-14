# each_consで3つずつの配列作って愚直に調べる
n = gets.to_i
ary = gets.split.map(&:to_i)

puts ary.each_cons(3).count{ _1[1] == _1.min(2)[-1] }
