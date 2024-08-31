n = gets.to_i
s = gets.chomp

p [s.index(?A), s.index(?B), s.index(?C)].max+1

__END__

gets;gets;p -~[~/A/,~/B/,~/C/].max

n = gets.to_i
s = gets.chomp.chars
count = [0, 0, 0]

s.each_with_index do |c, i|
  count['ABC'=~/#{c}/] += 1

  if count.all? { _1 >= 1 }
    puts i+1
    exit
  end
end
