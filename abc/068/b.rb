p 1<<("%b"%gets=~/.$/)
__END__
n = gets.to_i
p (1..n).max_by { |i| i.to_s(2)[/0*$/].size }
