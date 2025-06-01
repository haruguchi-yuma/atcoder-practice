n, s = gets.split.map(&:to_i)
t = [0] + gets.split.map(&:to_i)
puts t.each_cons(2).all? { _2 - _1 <= s } ? 'Yes' : 'No'


__END__
# コンテスト中に考えたやつ
n, s = gets.split.map(&:to_i)
t = gets.split.map(&:to_i)

now = 0
puts t.all? { |time| (time - now < s + 0.5).tap { now = time } } ? 'Yes' : 'No'
