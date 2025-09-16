q = gets.to_i

res = []
q.times do
  case gets.split.map(&:to_i)
  in [1, x]
    res << x
  in [2]
    p res.delete_at(res.index(res.min))
  end
end
