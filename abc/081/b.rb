n,*a=$<.read.split.map(&:to_i)
p a.map { ('%b'%_1)[/0*$/].size }.min
