# 挿入ソート
def insertion_sort(nums)
  i = 0
  while i < nums.length - 1
    # 挿入したい値
    value = nums[i+1]
    # valueを挿入する適切な位置kを探す
    k = i + 1
    while (k > 0) && (nums[k-1] > value)
      # valueより大きいものは1つ後ろにずらす
      nums[k] = nums[k-1]
      k -= 1
    end
    nums[k] = value
    i += 1
  end
end

Nums = gets.chomp.split.map(&:to_i)
p Nums
insertion_sort(Nums)
p Nums
