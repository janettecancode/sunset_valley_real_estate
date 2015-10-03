class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name
      t.string :address
      t.text :description
      t.decimal :unfurnished_price
      t.decimal :furnished_price
      t.integer :square_feet
      t.integer :beds
      t.integer :full_baths
      t.integer :half_baths
      t.integer :floors

      t.timestamps
    end
  end
end
