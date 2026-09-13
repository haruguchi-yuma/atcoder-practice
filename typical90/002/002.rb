n = gets.to_i
if n.odd?
  puts
  exit
end

def dfs(s, balance, n)
  if s.size == n
    puts s if balance == 0
    return
  end

  dfs(s + "(", balance + 1, n)

  if balance > 0
    dfs(s + ")", balance - 1, n)
  end
end

dfs("",0, n)
