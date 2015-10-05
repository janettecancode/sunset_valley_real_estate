module HousesHelper
  BASE_DIR = "/house_images/"
  PLACEHOLDER_URL = BASE_DIR + "house_placeholder.jpg"
  PLACEHOLDER_DESCRIPTION = "house placeholder image"

  def display_main_image(house)
    image = house.main_image
    image_url = BASE_DIR + image.folder + "/" + image.file

    if image.nil?
      link_to(
        image_tag(PLACEHOLDER_URL, alt: PLACEHOLDER_DESCRIPTION),
        image_path(PLACEHOLDER_URL)
      )
    else
      link_to(
        image_tag(image_url, alt: image.description),
        house_path(house.id)
      )
    end
  end

  def display_image(image)
    image_url = BASE_DIR + image.folder + "/" + image.file

    if image.nil?
      link_to(
        image_tag(PLACEHOLDER_URL, alt: PLACEHOLDER_DESCRIPTION),
        image_path(PLACEHOLDER_URL)
      )
    else
      link_to(
        image_tag(image_url, alt: image.description),
        image_path(image_url)
      )
    end
  end
end
