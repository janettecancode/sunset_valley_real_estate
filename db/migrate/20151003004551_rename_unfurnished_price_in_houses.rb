class RenameUnfurnishedPriceInHouses < ActiveRecord::Migration
  def change
    rename_column :houses, :unfurnished_price, :price
  end
end
