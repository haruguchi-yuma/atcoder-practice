# 1 / 4mは小数で考えることに注意
n, m, *a = $<.read.split.map(&:to_i)
BORDER =  a.sum / (4.0 * m)

puts a.select { _1 >= BORDER }.size >= m ? 'Yes' : 'No'
