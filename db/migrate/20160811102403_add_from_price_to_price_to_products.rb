class AddFromPriceToPriceToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :from_price, :decimal
  	add_column :products, :to_price, :decimal
  	add_column :products, :remaining, :decimal
  end
end
