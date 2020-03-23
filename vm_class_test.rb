require 'pry'

# 実行例
# irb
# require '/Users/morumore/Desktop/work/work_vm/vm_class_test.rb'
# 初期設定（自動販売機インスタンスを作成して、vmという変数に代入する）
# vm = VendingMachine.new
# 作成した自動販売機に100円を入れる
# vm.slot_money (100)
# 作成した自動販売機に入れたお金がいくらかを確認する（表示する）
# vm.current_slot_money
# 作成した自動販売機に入れたお金を返してもらう
# vm.return_money
class VendingMachine
  # ステップ０　お金の投入と払い戻しの例コード
  # ステップ１　扱えないお金の例コード
  # 10円玉、50円玉、100円玉、500円玉、1000円札を１つずつ投入できる。
  MONEY = [10, 50, 100, 500, 1000].freeze
  # （自動販売機に投入された金額をインスタンス変数の @slot_money に代入する）
  def initialize
    # 最初の自動販売機に入っている金額は0円
    # 売上の初期値は0円
    @slot_money = 0
    @sale = 0
  end

  def stock
    coke = Drink.new(120, 5)
  end

  # 投入金額の合計を取得できる。
  #vm.current_slot_money
  def current_slot_money
    return @slot_money
  end

  #vm.current_sale
  def current_sale
    return @sale
  end
  # 10円玉、50円玉、100円玉、500円玉、1000円札を１つずつ投入できる。
  # 投入は複数回できる。
  #vm.slot_money()
  def slot_money(money)
    if MONEY.include?(money) == true
      @slot_money += money
    end
  end

# Drinkの購入処理、投入金額の合計から購入するドリンクの値段1本分が引かれ、ドリンクの数が1本減る。saleはドリンクの値段分増える
# vm.buy(120, 5)
# coke.count -= 1
# 引数countにcoke.countを入れるとnilになる。
  def buy(price, count)
    if @slot_money >= price && count >= 1
      @slot_money -= price
      count -= 1 #accessorメソッドで定義しているcoke.countの数が-1になるかと思ったらならなかった。
      @sale += price
    end
  end
  # 払い戻し操作を行うと、投入金額の総計を釣り銭として出力する。
  def return_money
    # 返すお金の金額を表示する
    # 自動販売機に入っているお金を0円に戻す
    @slot_money = 0
  end
end

# step2:ジュースの管理
#coke = Drink.new(120, 5)
#coke.price = 120 読み込みのみ
#coke.count = 5 読み込みも書き込みも可能
class Drink
  attr_reader :price
  attr_accessor :count

  def initialize(price, count)
    @price = price
    @count = count
  end

end

# vm = VendingMachine.new
# coke = Drink.new(120, 5)
# vm.slot_money(500)
# vm.buy(coke.price, coke.count)
# vm.current_slot_money
# vm.current_sale
# coke.count
# binding.pry
# coke.price
# step2ここまで
