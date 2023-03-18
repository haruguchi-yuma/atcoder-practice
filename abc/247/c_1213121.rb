def main(n)
  return '1' if n == 1
  "#{main(n-1)} #{n} #{main(n-1)}"
end

puts main(gets.to_i)
