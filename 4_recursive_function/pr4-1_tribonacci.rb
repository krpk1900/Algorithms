# トリボナッチ数列
$memo = []

def tribonacci(n)
  return 0 if n == 1
  return 0 if n == 2
  return 1 if n == 3

  return $memo[n] if !$memo[n].nil?

  return $memo[n] = tribonacci(n-1) + tribonacci(n-2) + tribonacci(n-3)
end

N = gets.chomp.to_i
puts tribonacci(N)
