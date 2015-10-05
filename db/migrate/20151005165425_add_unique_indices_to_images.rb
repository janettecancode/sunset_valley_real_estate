class AddUniqueIndicesToImages < ActiveRecord::Migration
  def change
    add_index(:images, [:folder, :file], unique: true)
  end
end
