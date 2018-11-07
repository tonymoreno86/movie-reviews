module MoviesHelper
  def format_total_gross(movie)
    if movie.flop?
      content_tag(:strong, 'Flop!')
    else
      number_to_currency(movie.total_gross)
    end
  end

  def image_for(movie)
    if movie.main_image?
      image_tag(movie.main_image.url, width: '21%')
    else
      image_tag('placeholder.png')
    end
  end

  def format_average_stars(movie)
    if movie.average_stars.nil?
      content_tag(:strong, "No reviews")
    else
      "*" * movie.average_stars.round
    end
  end

  def delete_review_image
    image_tag('trash.png', style: 'border: 0', title: 'Delete Review')
  end
end
