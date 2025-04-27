n = gets.to_i
s = gets.split.map(&:to_i)
q = gets.to_i
t = gets.split.map(&:to_i)

cnt = 0

t.each do |num|
  l = 0
  r = s.size - 1
  while r >= l do
    mid = (l + r) / 2
    if s[mid] == num
      cnt += 1
      break
    elsif s[mid] < num
      l = mid + 1
    else
      r = mid - 1
    end
  end
end

p cnt
