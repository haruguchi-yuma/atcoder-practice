p gets[/^(.+)\1\B/].size
__END__
s = gets.chomp

while s.chop!
  if s[/^(.+)\1$/]
    puts s.size
    exit
  end
end
