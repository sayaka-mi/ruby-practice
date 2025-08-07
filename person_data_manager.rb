def prompt(message)
  print "#{message}: "
  gets.chomp
end

def register_data(data)
  name = prompt("名前を入力してください")
  age = prompt("年齢を入力してください").to_i
  tall = prompt("身長（m単位）を入力してください").to_f
  weight = prompt("体重を入力してください").to_f

  data << {name: name, age: age, weight: weight, tall: tall}
end

def show_data_list(data)
  if data.empty?
    puts "登録されたデータがありません。"
    return
  end
  puts "見たい人の番号を選択してください"
  data.each_with_index do |person, index|
    puts "#{index + 1}: #{person[:name]}"
  end

  print "番号: "
  index = gets.to_i - 1
  if index.between?(0, data.length - 1)
    show_data(data[index])
  else
    puts "無効な番号です。"
  end
end

def show_data(person)
  puts "名前: #{person[:name]}"
  puts "年齢: #{person[:age]}"
  puts "身長: #{person[:tall]} m"
  puts "体重: #{person[:weight]} kg"
end

data = []

loop do
  puts "\n選択してください"
  puts "[0] 登録する"
  puts "[1] データを確認する"
  puts "[2] 終了する"
  print "選択: "
  input = gets.to_i

  case input
  when 0
    register_data(data)
  when 1
    show_data_list(data)
  when 2
    puts "終了します。"
    break
  else
    puts "無効な値です。"
  end
end