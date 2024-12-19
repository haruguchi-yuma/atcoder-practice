# :memo: 単純なビット全探索
n = gets.to_i
a = gets.split.map(&:to_i)
q = gets.to_i
m = gets.split.map(&:to_i)
h = {}

(1<<n).times { |bit|
  sum = 0
  n.times do |i|
    sum += a[i] if bit[i] == 1
  end
  h[sum] = true
}

m.each { |mm| puts h[mm] ? 'yes' : 'no'}
