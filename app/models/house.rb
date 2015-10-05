class House < ActiveRecord::Base
  has_many :images, :dependent => :destroy

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

  def main_image
    self.images.find_by(file: 'ext_1.jpg')
  end

  def add_images(folder, ext_count, flr_count, int_count)
    ext_count.times do |i|
      self.images.create!(
        folder: folder,
        file: "ext_#{i + 1}.jpg",
        description: "Exterior view #{i + 1} of the house #{self.name}"
      )
    end

    flr_count.times do |i|
      self.images.create!(
        folder: folder,
        file: "flr_#{i + 1}.jpg",
        description: "Floorplan view #{i + 1} of the house #{self.name}"
      )
    end

    int_count.times do |i|
      self.images.create!(
        folder: folder,
        file: "int_#{i + 1}.jpg",
        description: "Interior view #{i + 1} of the house #{self.name}"
      )
    end
  end
end
