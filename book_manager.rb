def register_book(books)
  print '著者：'
  author = gets.chomp
  print 'タイトル：'
  title = gets.chomp
  print '価格（円）：'
  price = gets.to_i
  books << { author:, title:, price: }
end

def list_books(books)
  books.each_with_index { |book, i| puts "#{i}: #{book[:title]}" }
end

def choose_book(books)
  print '見たい本の番号：'
  idx = gets.to_i
  return nil unless idx.between?(0, books.size - 1)
  books[idx]
end

def show_detail(book)
  puts "著者：#{book[:author]}"
  puts "タイトル：#{book[:title]}"
  puts "価格：#{book[:price]}円"
end

books = []

loop do
  puts "\n番号を入力してください"
  puts "0: 本を登録する"
  puts "1: 本の一覧を見る"
  puts "2: 終了する"

  case gets.to_i
  when 0
    register_book(books)
  when 1
    if books.empty?
      puts "本が登録されていません"
    else
      list_books(books)
      book = choose_book(books)
      book ? show_detail(book) : puts("無効な番号です")
    end
  when 2
    break
  else
    puts '無効な入力です'
  end
end
