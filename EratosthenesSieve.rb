include Math

def eratosthenesSieve(max)
  table = Array.new(max+1){true}
  prime_numbers = []

  (2..max).each do |num|
    # ふるいから落とされていなければ素数
    prime_numbers << num if table[num]

    k = num * num
    while k < max do
      table[k] = false
      k += num
    end
  end
  return prime_numbers
end

p eratosthenesSieve(100)
