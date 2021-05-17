# メモ化を使用したフィボナッチ数列
$memo = []

def fibonacci(n)
  return 0 if n == 0
  return 1 if n == 1

  # memoにあれば利用
  return $memo[n] if !$memo[n].nil?

  return $memo[n] = fibonacci(n-1) + fibonacci(n-2)
end

N = gets.chomp.to_i
puts fibonacci(N)
p $memo
