def post_item(cart)
  item = {}
  puts "商品名を入力してください："
  item[:name] = gets.chomp
  puts "値段を入力してください："
  item[:price] = gets.to_i
  puts "個数を入力してください："
  item[:count] = gets.to_i

  puts "商品名 : #{item[:name]}"
  puts "値段 : #{item[:price]}"
  puts "個数 : #{item[:count]}"
  puts "合計金額 : #{item[:price] * item[:count]}"

  cart << item
  return cart
end

def check_items(cart)
  sum = 0
  cart.each_with_index do |item, index|
    puts "#{index + 1}"
    puts "商品名: #{item[:name]}"
    puts "値段: #{item[:price]}"
    puts "個数: #{item[:count]}"
    sum += item[:price] * item[:count]
  end
  puts "合計金額 : #{sum}"
end

def end_program
  exit
end

def exception
  puts "入力された値は無効な値です"
end

cart = []

while true
  puts "商品数: #{cart.length}"
  puts "[0]商品をカートに入れる"
  puts "[1]カートを確認する" unless cart.empty?
  puts "[2]アプリを終了する"

  input = gets.to_i

  if input == 0
    cart = post_item(cart)
  elsif input == 1
    check_items(cart)
  elsif input == 2
    end_program
  else
    exception
  end
end
