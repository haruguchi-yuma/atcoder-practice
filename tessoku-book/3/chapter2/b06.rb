n = gets.to_i
a = gets.split.map(&:to_i)

i = 0
s = [0] + a.map { i += it }

gets.to_i.times do
  l, r = gets.split.map(&:to_i)
  atari = s[r] - s[l-1]
  hazure = (r-l+1) - atari

  puts case atari <=> hazure
  when 1 then 'win'
  when -1 then 'lose'
  else 'draw'
  end
end
