# Frog問題に対するメモ化再帰を用いたアルゴリズム
$memo = []
H = gets.chomp.split.map(&:to_i)

def frog(i)
  return $memo[i] if !$memo[i].nil?
  return 0 if i == 0
  cost1 = cost2 = Float::INFINITY
  # i-1から来た場合
  cost1 = frog(i-1) + (H[i] - H[i-1]).abs if i >= 1
  # i-2から来た場合
  cost2 = frog(i-2) + (H[i] - H[i-2]).abs if i >= 2
  return $memo[i] = [cost1, cost2].min
end

puts frog(H.size-1)
