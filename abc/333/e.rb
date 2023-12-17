n = gets.to_i

event = Array.new(n) { gets.split.map(&:to_i) }.reverse

cnt = Array.new(n+1, 0)
ans = []
now = 0 # 敵の溜まっているかず
max = 0

event.each do |ary|
  case ary
  in [1, x]
    if cnt[x] > 0
      cnt[x] -= 1
      now -= 1
      ans << 1
    else
      ans << 0
    end
  in [2, x]
    cnt[x] += 1
    now += 1
  end

  max = [max, now].max
end

if now > 0
  puts -1
else
  puts max
  puts ans.reverse.join(' ')
end
