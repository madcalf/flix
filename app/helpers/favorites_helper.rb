module FavoritesHelper
  def favorite_or_unfavorite_button(movie, favorite)
    if favorite
      button_to(
        '♥️ Unfave',
        movie_favorite_path(movie, favorite),
        method: :delete
      )
    else
      button_to('♡ Fave', movie_favorites_path(movie))
    end
  end
end
