require 'test_helper'

class HouseTest < ActiveSupport::TestCase
  def new_house()
    House.new(name: "Just Another House",
              address: "21 Jump Street",
              description: "Just another house to live in, nothing special.",
              price: 220500,
              square_feet: 1000,
              beds: 2,
              full_baths: 1,
              half_baths: 1,
              floors: 1)
  end

  test "house attributes must not be empty" do
    house = House.new

    assert house.invalid?
    assert house.errors[:name].any?
    assert house.errors[:address].any?
    assert house.errors[:description].any?
    assert house.errors[:price].any?
    assert house.errors[:square_feet].any?
    assert house.errors[:beds].any?
    assert house.errors[:full_baths].any?
    assert house.errors[:half_baths].any?
    assert house.errors[:floors].any?
  end

  test "house address must be unique" do
    house = new_house

    house.address = houses(:happy_home).address
    assert house.invalid?
    assert_equal ["has already been taken"], house.errors[:address]
  end

  test "house price must be greater than 0.0 " do
    house = new_house

    house.price = 0.0
    assert house.invalid?
    assert_equal ["must be greater than 0.0"], house.errors[:price]

    house.price = -1.0
    assert house.invalid?
    assert_equal ["must be greater than 0.0"], house.errors[:price]

    house.price = 1.0
    assert house.valid?
  end

  test "house square feet must be an integer greater than 0" do
    house = new_house

    house.square_feet = 500.5
    assert house.invalid?
    assert_equal ["must be an integer"], house.errors[:square_feet]

    house.square_feet = 0
    assert house.invalid?
    assert_equal ["must be greater than 0"], house.errors[:square_feet]

    house.square_feet = -1
    assert house.invalid?
    assert_equal ["must be greater than 0"], house.errors[:square_feet]

    house.square_feet = 1
    assert house.valid?
  end

  test "house beds must be an integer greater than or equal to 0" do
    house = new_house

    house.beds = 1.5
    assert house.invalid?
    assert_equal ["must be an integer"], house.errors[:beds]

    house.beds = -1
    assert house.invalid?
    assert_equal ["must be greater than or equal to 0"], house.errors[:beds]

    house.beds = 0
    assert house.valid?

    house.beds = 1
    assert house.valid?
  end

  test "house full baths must be an integer greater than or equal to 0" do
    house = new_house

    house.full_baths = 1.5
    assert house.invalid?
    assert_equal ["must be an integer"], house.errors[:full_baths]

    house.full_baths = -1
    assert house.invalid?
    assert_equal ["must be greater than or equal to 0"], house.errors[:full_baths]

    house.full_baths = 0
    assert house.valid?

    house.full_baths = 1
    assert house.valid?
  end

  test "house half baths must be an integer greater than or equal to 0" do
    house = new_house

    house.half_baths = 1.5
    assert house.invalid?
    assert_equal ["must be an integer"], house.errors[:half_baths]

    house.half_baths = -1
    assert house.invalid?
    assert_equal ["must be greater than or equal to 0"], house.errors[:half_baths]

    house.half_baths = 0
    assert house.valid?

    house.half_baths = 1
    assert house.valid?
  end

  test "house floors must be an integer greater than 0" do
    house = new_house

    house.floors = 1.5
    assert house.invalid?
    assert_equal ["must be an integer"], house.errors[:floors]

    house.floors = 0
    assert house.invalid?
    assert_equal ["must be greater than 0"], house.errors[:floors]

    house.floors = -1
    assert house.invalid?
    assert_equal ["must be greater than 0"], house.errors[:floors]

    house.floors = 1
    assert house.valid?
  end
end
