# クイックソート
nums = gets.chomp.split.map(&:to_i)

# 区間[left, right)をソート
def quick_sort(nums, left, right)
  pivot_index = (left + right) / 2
  pivot = nums[pivot_index]
  i = left
  k = right

  while i < k
    # pivotより大きい値を見つけるまで左から順に見ていく
    while (nums[i] < pivot) && (i < right)
      i += 1
    end
    # pivotより小さい値を見つけるまで右から順に見ていく
    while (nums[k] > pivot) && (k > left)
      k -= 1
    end

    if i < k
      # スワップ
      nums[i], nums[k] = nums[k], nums[i]
    end
  end

  # if nums[left] > nums[k]
  #   nums[left], nums[k] = nums[k], nums[left]
  # end

  if left < k-1
    quick_sort(nums, left, k-1)
  end

  if k+1 < right
    quick_sort(nums, k+1, right)
  end
end

quick_sort(nums, 0, nums.length-1)
p nums
