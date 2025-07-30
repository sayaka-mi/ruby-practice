# 文字ごとの整数合計問題
n = gets.to_i
hash = Hash.new(0)

n.times do
  s, t = gets.split
  hash[s] += t.to_i
end

hash.sort_by { |_, sum| -sum }.each do |s, sum|
  puts "#{s} #{sum}"
end