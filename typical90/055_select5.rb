# rubyだとwhile文で回さないとTLEになるっぽい？
N, P, Q = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

ans = 0
i = 0
while i <= N - 5
  mul_i = A[i] % P
  j = i + 1
  while j <= N - 4
    mul_j = mul_i * A[j] % P
    k = j + 1
    while k <= N - 3
      mul_k = mul_j * A[k] % P
      l = k + 1
      while l <= N - 2
        mul_l = mul_k * A[l] % P
        m = l + 1
        while m <= N - 1
          ans += 1 if mul_l * A[m] % P == Q
          m += 1
        end
        l += 1
      end
      k += 1
    end
    j += 1
  end
  i += 1
end

puts ans

# https://atcoder.jp/contests/typical90/tasks/typical90_bc
