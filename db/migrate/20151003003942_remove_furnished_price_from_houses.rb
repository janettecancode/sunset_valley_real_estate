class RemoveFurnishedPriceFromHouses < ActiveRecord::Migration
  def change
    remove_column :houses, :furnished_price, :decimal
  end
end
