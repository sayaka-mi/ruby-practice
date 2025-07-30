# 部分文字列カウント問題
# s が t に何回出現するかを数える（重複を含む）

s = gets.chomp
t = gets.chomp

# 特殊文字が入っている可能性もあるため、Regexp.escapeで正規表現用にエスケープ
# (?=...) を使うことで、重複する部分もカウントできる
count = t.scan(/(?=#{Regexp.escape(s)})/).count

puts count