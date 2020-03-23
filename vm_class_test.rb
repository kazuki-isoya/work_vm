# 実行例
# irb
# require /Users/morumore/Desktop/ワーク/work_vm/vm_class_test_rb
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

  # 投入金額の合計を取得できる。
  def current_slot_money
    return @slot_money
  end
  # 10円玉、50円玉、100円玉、500円玉、1000円札を１つずつ投入できる。
  # 投入は複数回できる。
  def slot_money(money)
    if MONEY.include?(money) == true
      @slot_money += money
    end
  end

# Drinkの購入処理、投入金額の合計から購入するドリンクの値段1本分が引かれ、ドリンクの数が1本減る。
  def buy(name, price, count)
    if @slot_money >= price
      @slot_money -= price
      count -= 1
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
#coke_stock = Stock.new("coke", 5, 120)
class Drink
  attr_reader :drink, :price
  attr_accessor :count
  def initialize(drink, price, count)
    @name = name
    @price = price
    @count = count
  end
end
# step2ここまで


# step3:購入処理
# purchase = Purchase.new
# class Purchase

  # def initialize
  #   @sales = 0
    # @drink_stock = stock.drink_stock
    # @coke_count = stock.coke_count
    # @coke_price = stock.coke_price
  # end


  # お金を入れる処理
  # def slot_money(money)
  #   vm.slot_money(500)
  # end

  # 金額の確認
  # p vm.current_slot_money

  #購入処理
#   def buy(drink, price)
#     if @current_slot_money >= price
#       @sales += price
#       @current_slot_money -= price
#     end
#   end
#
# end
# step3ここまで




#ステップ4
# def add_stock
#   st.drink_stock[:water] = {price:100, count:5}
#   st.drink_stock[:redbull] = {price:200, count:5}
# end
#


# ステップ5
# def judgement
#   redbull_count = drink_stock[:redbull][:count]
#   water_count = drink_stock[:water][:count]
#   if vm.current_slot_money >=200 && redbull_count != 0 && coke_count != 0 && water_count != 0
#     puts "購入可能品：レッドブル、コーラ、水"
#   elsif vm.current_slot_money >=200 && redbull_count != 0 && coke_count != 0 && water_count == 0
#     puts "購入可能品：レッドブル、コーラ"
#   elsif vm.current_slot_money >=200 && redbull_count != 0 && coke_count == 0 && water_count != 0
#     puts "購入可能品：レッドブル、水"
#   elsif vm.current_slot_money >=200 && redbull_count != 0 && coke_count == 0 && water_count == 0
#     puts "購入可能品：レッドブル"
#   elsif vm.current_slot_money >= 120 && coke_count != 0 && water_count != 0
#     puts "購入可能品：コーラ、水"
#   elsif vm.current_slot_money >= 120 && coke_count != 0 && water_count == 0
#     puts "購入可能品：コーラ"
#   elsif vm.current_slot_money >=100 &&  water_count != 0
#     puts "購入可能品：水"
#   else
#     puts "購入可能品：なし"
#   end
# end
