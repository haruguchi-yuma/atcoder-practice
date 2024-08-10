a,b,c,k,s,t = $<.read.split.map(&:to_i)
p a*s+b*t-((n=s+t)<k ? 0 : n*c)
