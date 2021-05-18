# ナップサック問題
weight = [2, 1, 3, 2, 1, 5]
value = [3, 2, 6, 1, 3, 85]
W = 15
dp = Array.new(20) { Array.new(20, 0)}

for i in 0..weight.size-1 do
  for w in 0..W do
    if w >= weight[i]
      dp[i+1][w] = [dp[i][w-weight[i]] + value[i], dp[i][w]].max
    else
      dp[i+1][w] = dp[i][w]
    end
  end
end

# dpの確認
for i in 0..weight.size do
  p dp[i]
end

puts dp[weight.size][W]
