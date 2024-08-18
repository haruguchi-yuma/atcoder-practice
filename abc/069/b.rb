puts gets.sub(/\B.*\B/, &:size)
__END__
a,*b,c=gets.chomp.chars;
puts a+"#{b.size}"+c
