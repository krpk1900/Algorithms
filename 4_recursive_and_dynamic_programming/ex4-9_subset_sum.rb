# 部分和問題
$A = gets.chomp.split.map(&:to_i)

def subset_sum(i, w)
  if i == 0
    return w == 0
  end

  # $A[i-1]を選ばないとき
  return true if subset_sum(i-1, w)
  # $A[i-1]を選ぶとき
  return true if subset_sum(i-1, w-$A[i-1])
  # $A[i-1]を選んでも選ばなくても不可能なとき
  return false
end

W = gets.chomp.to_i
puts subset_sum($A.size, W)
