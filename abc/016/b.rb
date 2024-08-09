a,b,c=gets.split.map(&:to_i);puts '!+-?'[(a+b==c ? 1: 0)+(a-b==c ? 2: 0)]
__END__
a,b,c = gets.split.map(&:to_i)
puts case [a+b, a-b]
in [^c, ^c]then ??
in [^c, _] then ?+
in [_, ^c] then ?-
else ?!
end

