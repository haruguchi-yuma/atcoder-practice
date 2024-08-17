a, b = gets.split.map{(_1.to_i-2)%13}
puts %w(Draw Alice Bob)[a<=>b]
__END__
a,b = gets.gsub(/1\b/, '14').split.map(&:to_i);puts %w(Draw Alice Bob)[a<=>b]
