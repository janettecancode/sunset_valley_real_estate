module HousesHelper
  def display_main_image(house)
    image = house.main_image

    if image.nil? || !image.uploaded?
      link_to(
        image_tag(placeholder_url, alt: placeholder_description),
        house_path(house.id))
    else
      link_to(
        image_tag(image.url, alt: image.description),
        house_path(house.id))
    end
  end

  def display_image(image)
    if image.nil? || !image.uploaded?
      link_to(
        image_tag(placeholder_url, alt: placeholder_description),
        image_path(placeholder_url))
    else
      link_to(
        image_tag(image.url, alt: image.description),
        image_path(image.url))
    end
  end

  def placeholder_url
    placeholder_url = "/house_images/house_placeholder.jpg"
  end

  def placeholder_description
    placeholder_description = "house placeholder image"
  end
end
