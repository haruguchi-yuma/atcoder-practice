s = gets.chomp.chars

h = {}
stack = []

s.each do |c|
  if (?a..?z) === c
    if h[c]
      puts 'No'
      exit
    end
    h[c] = true
    stack << c
  elsif '(' == c
    stack << c
  else
    while r = stack.pop
      break if r == '('
      h[r] = false
    end
  end
end

puts 'Yes'
