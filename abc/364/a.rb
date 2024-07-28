n = gets.to_i
s = Array.new(n) { gets.chomp }

s.pop
puts s.each_cons(2).any? { |a| a.all?('sweet') } ? 'No' : 'Yes'
