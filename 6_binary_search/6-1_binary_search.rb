# 二分探索
$nums = [3, 5, 8, 10, 14, 17, 21, 39]

def binary_search(key)
  left = 0
  right = $nums.size-1

  while right >= left do
    middle = left + (right - left) / 2
    if key == $nums[middle]
      return middle
    elsif key < $nums[middle]
      right = middle - 1
    elsif key > $nums[middle]
      left = middle + 1
    end
  end
  return -1
end

p $nums
Search_num = gets.chomp.to_i
puts binary_search(Search_num)
