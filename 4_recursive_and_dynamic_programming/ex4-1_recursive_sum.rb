# 1からNまでの総和を求計算する再帰関数
def recursive_sum(n)
  return 0 if n == 0
  return n + recursive_sum(n-1)
end

N = gets.chomp.to_i
puts recursive_sum(N)
