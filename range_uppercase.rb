# 範囲の文字を大文字にする問題
# 1行目：開始位置と終了位置（1-indexed）
# 2行目：対象文字列

a, b = gets.split.map(&:to_i)
s = gets.chomp

# Rubyの文字列は0-indexedなので調整
before = s[0...(a - 1)]
target = s[(a - 1)...b].upcase
after = s[b..]

puts before + target + after