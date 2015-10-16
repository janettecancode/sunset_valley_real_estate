module HousesHelper
  BASE_DIR = "/house_images/"

  def display_main_image(house)
    image = house.main_image

    if image.nil?
      link_to_placeholder
    else
      link_to(
        image_tag(image_url(image), alt: image.description),
        house_path(house.id)
      )
    end
  end

  def display_image(image)
    if image.nil?
      link_to_placeholder
    else
      link_to(
        image_tag(image_url(image), alt: image.description),
        image_path(image_url(image))
      )
    end
  end

  def image_url(image)
    BASE_DIR + image.folder + "/" + image.file
  end

  def link_to_placeholder
    placeholder_url = BASE_DIR + "house_placeholder.jpg"
    placeholder_description = "house placeholder image"
    link_to(
      image_tag(placeholder_url, alt: placeholder_description),
      image_path(placeholder_url)
    )
  end
end
