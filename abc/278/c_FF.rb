# nilガードを使って初期化しないと間に合わなかった
require 'set'

n, q = gets.split.map(&:to_i)
h = {}

q.times do |i|
  t, a, b = gets.split.map(&:to_i)
  case t
  when 1
    h[a] ||= Set.new
    h[a] << b
  when 2
    h[a] ||= Set.new
    h[a].delete b
  when 3
    puts h[a]&.include?(b) && h[b]&.include?(a) ? 'Yes' : 'No'
  end
end

# https://atcoder.jp/contests/abc278/tasks/abc278_c
