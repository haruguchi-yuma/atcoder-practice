a, b = $<.map(&:to_i)
p [(b-a)%10,(a-b)%10].min
