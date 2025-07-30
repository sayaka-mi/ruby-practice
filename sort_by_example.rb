# n組の「文字と整数」を読み込み、
# 整数の昇順で並べ替えたあと文字だけ出力

n = gets.to_i
arr = []

n.times do
  s, d = gets.split
  arr << [s, d.to_i]
end

arr.sort_by! { |s, d| d }

arr.each { |s, d| puts s }
