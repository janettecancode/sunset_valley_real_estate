require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  def new_image()
    Image.new(folder: "house_images",
              file: "int_1.jpg",
              description: "Interior view 1",)
  end

  test "image attributes must not be empty" do
    image = Image.new

    assert image.invalid?
    assert image.errors[:folder].any?
    assert image.errors[:description].any?
    assert image.errors[:file].any?
  end

  test "image file and folder must be unique" do
    image = new_image

    assert image.valid?

    image.folder = images(:impeccable_image).folder
    assert image.valid?

    image.file = images(:impeccable_image).file
    assert image.invalid?
    assert_equal ["has already been taken"], image.errors[:file]
  end

  test "image file format must be ext_#.jpg, flr_#.jpg, or int_#.jpg" do
    image = new_image

    image.file = "ext_1.jpg"
    assert image.valid?

    image.file = "flr_1.jpg"
    assert image.valid?

    image.file = "int_1.jpg"
    assert image.valid?

    image.file = "ext_10.jpg"
    assert image.invalid?
    assert_equal(
      ["valid files are ext_#.jpg, flr_#.jpg, or int_#.jpg (# is a digit 1-9)"],
      image.errors[:file])

    image.file = "ext_10.png"
    assert image.invalid?
    assert_equal(
      ["valid files are ext_#.jpg, flr_#.jpg, or int_#.jpg (# is a digit 1-9)"],
      image.errors[:file])

    image.file = "img_1.jpg"
    assert image.invalid?
    assert_equal(
      ["valid files are ext_#.jpg, flr_#.jpg, or int_#.jpg (# is a digit 1-9)"],
      image.errors[:file])
  end
end
