class House < ActiveRecord::Base
  validates :name, :address, :description, presence: true
  validates :address, uniqueness: true
  validates :price, numericality: { greater_than: 0.0 }
  validates :square_feet, :floors, numericality: {
    only_integer: true,
    greater_than: 0
  }
  validates :beds, :full_baths, :half_baths, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0
  }
end
