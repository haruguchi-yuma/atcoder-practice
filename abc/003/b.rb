a,b=$<.map(&:chars);puts a.zip(b).all? {|s,t|s==t||'@a@t@c@o@d@e@r@'[s+t]}?'You can win':'You will lose'

