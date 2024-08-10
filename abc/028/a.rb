n = gets.to_i
puts case n
when 0..59 then 'Bad'
when 60..89 then 'Good'
when 90..99 then 'Great'
else 'Perfect'
end
