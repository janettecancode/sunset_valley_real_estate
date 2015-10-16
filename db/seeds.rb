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

house = House.create!(
  name: "El Urban Sprawl",
  address: "60 Maywood Lane",
  description: %{
    Long and low, this suburban ranch includes a two-car garage,
    shady front and back porches, and a large, open yard.
  },
  price: 178690.00,
  square_feet: 1200,
  beds: 2,
  full_baths: 1,
  half_baths: 0,
  floors: 1
)
house.add_images("el_urban_sprawl", 2, 1, 3)

house = House.create!(
  name: "Modernehaus",
  address: "65 Maywood Lane",
  description: %{
    The elegant, waterway entrance leads to the centerpiece of the home -
    the interior atrium at the heart of an open, light-filled living plan.
    Includes a pool and two-car garage.
  },
  price: 598340.00,
  square_feet: 1200,
  beds: 3,
  full_baths: 2,
  half_baths: 0,
  floors: 1
)
house.add_images("modernehaus", 4, 1, 2)

house = House.create!(
  name: "The Monotone",
  address: "72 Water Lily Lane",
  description: %{
    Low in price, but high in style, this house strikes the right chord.
    Will its new owner be a one hit wonder or the next superstar?
  },
  price: 125450.00,
  square_feet: 600,
  beds: 1,
  full_baths: 1,
  half_baths: 0,
  floors: 1
)
house.add_images("the_monotone", 3, 1, 2)

house = House.create!(
  name: "Mosquito Cove",
  address: "36 Sim Lane",
  description: %{
    Imagine your own footbridge leading into your like-new home!
    This small house with big character is situated on water-rich
    estate and includes an almost screened-in porch.
  },
  price: 152500.00,
  square_feet: 1200,
  beds: 1,
  full_baths: 1,
  half_baths: 0,
  floors: 2
)
house.add_images("mosquito_cove", 3, 2, 3)

house = House.create!(
  name: "Myrtle Bungalow",
  address: "3 Sun Song Avenue",
  description: %{
    Cozy and livable, this compact house is packed with potential
    for the home modeler while retaining its Victorian charm.
  },
  price: 196040.00,
  square_feet: 600,
  beds: 1,
  full_baths: 1,
  half_baths: 0,
  floors: 1
)
house.add_images("myrtle_bungalow", 3, 1, 2)

house = House.create!(
  name: "Pondcentric",
  address: "98 Landgraab Avenue",
  description: %{
    This modern, open, one-story house wraps around a central
    patio with a private pond.
  },
  price: 530530.00,
  square_feet: 1200,
  beds: 2,
  full_baths: 1,
  half_baths: 0,
  floors: 1
)
house.add_images("pondcentric", 4, 1, 2)

house = House.create!(
  name: "Pre-fabulous",
  address: "55 Water Lily Lane",
  description: %{
    This affordable home is proud of its simplicity. This is not a
    trailer...really, it isn't...it just happens to be long and narrow.
  },
  price: 100030.00,
  square_feet: 600,
  beds: 1,
  full_baths: 1,
  half_baths: 0,
  floors: 1
)
house.add_images("prefabulous", 3, 1, 3)

house = House.create!(
  name: "Shearwater",
  address: "120 Wright Way",
  description: %{
    Ocean views dominate this well appointed aerie that retains
    a homey feel with its unique shanty-cabin style of construction.
    Spacious for a one-bedroom, it is perfect for entertaining...or retreating.
  },
  price: 377190.00,
  square_feet: 1200,
  beds: 1,
  full_baths: 1,
  half_baths: 1,
  floors: 2
)
house.add_images("shearwater", 4, 2, 4)

house = House.create!(
  name: "Shotgun Style",
  address: "58 Water Lily Lane",
  description: %{
    Affordable housing with lots of potential, this economical house
    includes two bedrooms so the new couple can add to the family right away.
  },
  price: 128240.00,
  square_feet: 900,
  beds: 2,
  full_baths: 1,
  half_baths: 0,
  floors: 1
)
house.add_images("shotgun_style", 1, 1, 2)

house = House.create!(
  name: "Unabridged",
  address: "455 Sunnyside Boulevard",
  description: %{
    A traditional cape style house is made modern by bridging a large
    custom pool. Easy living on this beach front property will make you
    feel like you are on vacation every day of the week.
  },
  price: 1010490.00,
  square_feet: 1600,
  beds: 2,
  full_baths: 2,
  half_baths: 0,
  floors: 1
)
house.add_images("unabridged", 3, 1, 3)

house = House.create!(
  name: "Wagner's Repose",
  address: "250 Redwood Parkway",
  description: %{
    This is the perfect home for the composer seeking inspiration
    or people who just love living among the ocean waves and redwoods.
    This is a grand old house with wraparound porches and a fourth-story
    cupola to take in the best views in town.
  },
  price: 911550.00,
  square_feet: 1200,
  beds: 3,
  full_baths: 3,
  half_baths: 0,
  floors: 4
)
house.add_images("wagners_repose", 4, 4, 6)

house = House.create!(
  name: "Ye Olde Tudor",
  address: "325 Oak Grove Road",
  description: %{
    This traditional Tudor style home boasts roomy, well-appointed
    rooms, a kitchen that is a chef's delight, a separate two-car garage,
    and a third-story attic. It's the kind of house to which the most
    tasteful people aspire.
  },
  price: 863870.00,
  square_feet: 1200,
  beds: 3,
  full_baths: 2,
  half_baths: 1,
  floors: 3
)
house.add_images("ye_olde_tudor", 4, 3, 7)
