n, *d = $<.read.split.map(&:to_i)

def zorome?(month, date)
  (1..date).count {|d| (month.digits + d.digits).uniq.size == 1 }
end

p d.each.with_index.sum { |date, i| zorome?(i+1,date) }
