n,*a=$<.read.split.map(&:to_i)
if a.sum % n != 0
  puts -1
  exit
end
ans = 0
ave = a.sum/n
cnt = 0
sum = 0

a.each do |i|
  sum += i
  cnt += 1
  if sum.to_f / cnt == ave
    ans += cnt - 1
    cnt = 0
    sum = 0
  end
end

p ans
