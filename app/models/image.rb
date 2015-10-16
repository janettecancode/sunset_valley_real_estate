class Image < ActiveRecord::Base
  belongs_to :house

  validates :folder, :description, presence: true
  validates :file, format: {
    with: /\A(ext|flr|int)_[1-9].jpg\z/,
    message: 'valid files are ext_#.jpg, flr_#.jpg, or int_#.jpg (# is a digit 1-9)'
  }
  validates :file, uniqueness: { scope: :folder }

  def uploaded?
    File.exist?("#{Rails.root}/public/house_images/" + self.folder + "/" + self.file)
  end

  def url
    "/house_images/" + self.folder + "/" + self.file
  end
end
