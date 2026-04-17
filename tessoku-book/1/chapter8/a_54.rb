q = gets.to_i
h = {}
q.times do
  s, name, score = gets.chomp.split
  if s == '1'
    h[name] = score.to_i
  else
    p h[name]
  end
end



__END__
3
1 tanaka 49
1 suzuki 50
2 tanaka
