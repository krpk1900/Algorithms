# ユークリッドの互除法
def euclidean_algorithm(m, n)
  puts "m=#{m} n=#{n}"
  return m if n == 0
  return euclidean_algorithm(n, m%n)
end

M, N = gets.chomp.split.map(&:to_i)
puts euclidean_algorithm(M, N)
