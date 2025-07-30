# 名前＋カテゴリの複合キーでスコアを集計し、複数条件でソートして出力するプログラム

n = gets.to_i
hash = Hash.new(0)

n.times do
  name, category, score = gets.split
  hash[[name, category]] += score.to_i
end

# スコアの降順 → 名前の昇順 → カテゴリの昇順でソート
hash.sort_by { |(name, category), sum| [-sum, name, category] }.each do |(name, category), sum|
  puts "#{name} #{category} #{sum}"
end