House.delete_all
Image.delete_all

house = House.create!(
  name: "Americana",
  address: "442 Skyborough Boulevard",
  description: %{
    This white-painted country house anchors the west end of the
    Skyborough neighborhood, welcoming guests with an inviting,
    corner-facing porch.
  },
  price: 471050.00,
  square_feet: 900,
  beds: 2,
  full_baths: 2,
  half_baths: 0,
  floors: 2
)
house.add_images("americana", 4, 2, 4)

house = House.create!(
  name: "Capitola A",
  address: "15 Maywood Lane",
  description: %{
    The interior of this A-frame house flashes back to the '70s with
    flair. The backyard includes a grove of pine trees and a massive
    deck.
  },
  price: 442050.00,
  square_feet: 1200,
  beds: 2,
  full_baths: 1,
  half_baths: 1,
  floors: 2
)
house.add_images("capitola_a", 3, 2, 3)

house = House.create!(
  name: "Condor Museum Lofts",
  address: "280 Sunnyside Boulevard",
  description: %{
    When you have reached that stage of life when suburban living has
    lost its appeal, it is time to move up to this stunning abode.
  },
  price: 614910.00,
  square_feet: 1200,
  beds: 4,
  full_baths: 1,
  half_baths: 0,
  floors: 3
)
house.add_images("condor_museum_lofts", 3, 3, 4)

house = House.create!(
  name: "Cormorant",
  address: "180 Wright Way",
  description: %{
    An open floor plan, dramatic bridge entrance, and sweeping
    cove vistas distinguish this cantilevered view home. Built mostly
    on one level, this elegant modern home with its round cupola studio
    is ideal for the artistically inclined.
  },
  price: 589320.00,
  square_feet: 1200,
  beds: 3,
  full_baths: 1,
  half_baths: 1,
  floors: 2
)
house.add_images("cormorant", 3, 2, 3)

house = House.create!(
  name: "Cozy Craftsman",
  address: "28 Sim Lane",
  description: %{
    If you are seeking a quaint two bedroom home with lots of charm,
    this is the house for you. Despite its compact layout and
    affordable price, it still features find craftsman style, a
    fireplace, carport and its own pond!
  },
  price: 268380.00,
  square_feet: 1200,
  beds: 2,
  full_baths: 1,
  half_baths: 1,
  floors: 2
)
house.add_images("cozy_craftsman", 4, 2, 3)
