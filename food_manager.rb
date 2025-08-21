class Food
  # クラス変数で全ての料理を管理
  @@foods = []

  # クラスメソッド：料理の入力
  def self.input
    puts "料理名を入力してください:"
    name = gets.chomp
    puts "カロリーを入力してください:"
    calory = gets.to_i

    # 新しいFoodオブジェクトを作ってクラス変数に追加
    food = Food.new(name, calory)
    @@foods << food
  end

  # クラスメソッド：合計カロリーを表示
  def self.show_all_calory
    total = 0
    line = "-----------------------------"
    puts line

    @@foods.each do |food|
      puts "#{food.name} : #{food.calory}kcal"
      total += food.calory
    end

    puts line
    puts "カロリー合計 : #{total}kcal"
  end

  # インスタンスメソッド：初期化
  def initialize(name, calory)
    @name = name
    @calory = calory
  end

  # インスタンスメソッド：名前を返す
  def name
    @name
  end

  # インスタンスメソッド：カロリーを返す
  def calory
    @calory
  end
end

# -------------------------------
# メニュー操作部分
# -------------------------------
while true do
  puts "[0]:カロリーを入力する"
  puts "[1]:カロリーの合計を見る"
  input = gets.to_i

  if input == 0
    Food.input           # クラスメソッドを呼ぶ
  elsif input == 1
    Food.show_all_calory # クラスメソッドを呼ぶ
    exit
  end
end
