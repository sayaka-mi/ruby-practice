def book_data(books)
  print "タイトル:"
  title = gets.chomp
  print "著者:"
  author = gets.chomp
  books << { title:, author: }
  show_data(books)
end

def show_data(books)
  puts "登録一覧:"
  books.each_with_index do |book, index|
    puts "#{index + 1}: タイトル: #{book[:title]} 著者: #{book[:author]}"
  end
end

def search_books(books, keyword)
  puts "検索結果："
  results = books.select { |book| book[:title].include?(keyword) }
  if results.empty?
    puts "見つかりませんでした。"
  else
    results.each_with_index do |book, index|
      puts "#{index + 1}: タイトル: #{book[:title]} 著者: #{book[:author]}"
    end
  end
end

books = []

while true
  print "本を登録しますか？（y/n）: "
  input = gets.chomp.downcase
  break if input != "y"
  book_data(books)
end

print "検索したいキーワードを入力してください: "
keyword = gets.chomp
search_books(books, keyword)
