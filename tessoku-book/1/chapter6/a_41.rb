n = gets.to_i
s = gets.chomp.chars

que = []
used = []

push = -> (i){
  return if i < 0 || i > n
  return if used[i]
  str = s[i, 3].join

  if (str.count(??) + str.count(?R) == 3) || (str.count(??) + str.count(?B) == 3)
    que << i
    used[i] = true
  end
}

(n-2).times { push[_1] }

while r = que.shift
  s[r, 3] = [??, ??, ??]

  (r-2..r+2).each do |ni|
    push[ni]
  end
end

puts s.all?(??) ? 'Yes' : 'No'
