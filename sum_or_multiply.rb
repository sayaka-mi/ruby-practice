# 足す or 掛ける問題
# 同じ数なら掛ける、違うなら足す
# n 行の整数ペアが与えられ、その結果の合計を出力

n = gets.to_i
total = 0

n.times do
  a, b = gets.split.map(&:to_i)
  total += (a == b ? a * b : a + b)
end

puts total