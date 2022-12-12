module MoviesHelper
  include ActionView::Helpers::NumberHelper

  def total_gross(movie)
    return 'Flop!' if movie.flop?

    number_to_currency(movie.total_gross)
  end

  def year_of(movie)
    movie.released_on.year
  end

  def reviews_link(movie)
    return if @movie.reviews.count.zero?

    link_to(
      pluralize(movie.reviews.count, 'Review'),
      movie_reviews_path(movie),
      class: 'button'
    )
  end

  def average_stars(movie)
    percent = movie.average_stars_as_percent
    return content_tag(:strong, 'No Reviews') if percent.zero?

    render('shared/stars', percent: percent)
  end
end
