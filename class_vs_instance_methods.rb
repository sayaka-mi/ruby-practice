class Dog
  @@type = "犬"  # クラス変数（全インスタンス共通）

  # クラスメソッド（クラス名で呼び出す）
  def self.say
    puts "犬はワンワンと吠えます"
  end

  # インスタンスを作るときに名前と種類をセット
  def initialize(name, breed)
    @name = name          # インスタンス変数
    @breed = breed        # インスタンス変数
  end

  # インスタンスメソッド（インスタンスから呼び出す）
  def self_introduction
    puts "わたしの名前は#{@name}で種類は#{@breed}です"
  end

  # クラス変数を使うインスタンスメソッド
  def say_type
    puts "わたしは#{@@type}です"
  end
end

# --- 呼び出し例 ---

# クラスメソッドの呼び出し
Dog.say  # => 犬はワンワンと吠えます

# インスタンスを作成
dog1 = Dog.new("マロン", "トイプードル")

# インスタンスメソッドの呼び出し
dog1.self_introduction  # => わたしの名前はマロンで種類はトイプードルです
dog1.say_type          # => わたしは犬です