n = gets.to_i
res = Array.new(n) { gets.split.map(&:to_i) }

events = []
res.each do |l, r|
  events << [l, 1]
  events << [r+0.1, -1]
end

events = events.sort_by(&:first)

active = 0
ans = 0
events.each do |point, event|
  if event == 1
    ans += active
    active += 1
  else
    active -= 1
  end
end

p ans
