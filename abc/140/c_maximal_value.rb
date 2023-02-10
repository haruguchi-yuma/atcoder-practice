# b_i = max(a_i, a_i+1)の視点を変えて
# a_1 <= b_1
# a_2 <= b_1 && a_2 <= b_2
# a_3 <= b_2 && a_3 <= b_3
# a_4 <= b_3 && a_4 <= b_4
#   ....
#               a_i <= b_i

n, *b = $<.read.split.map(&:to_i)

puts b[0] + b.each_cons(2).map(&:min).sum + b[-1]
