class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :folder
      t.string :file
      t.text :description
      t.references :house, index: true

      t.timestamps
    end
  end
end
