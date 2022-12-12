class MoviesController < ApplicationController
  before_action :require_signin, except: %i[index show]
  before_action :require_admin, except: %i[index show]
  before_action :set_movie, only: %i[show edit update destroy]

  def index
    @movies = Movie.send(movies_filter)
  end

  def show
    @fans = @movie.fans
    @genres = @movie.genres
    @favorite = current_user&.favorites&.find_by(movie_id: @movie.id)
  end

  def edit; end

  def update
    if @movie.update(movie_params)
      redirect_to movie_path, notice: 'Movie successfully updated.' # can also use @movie
    else
      render('edit', status: :unprocessable_entity)
    end
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to @movie, notice: 'Movie successfully added.'
    else
      render(:new, status: :unprocessable_entity)
    end
  end

  def destroy
    @movie.destroy
    redirect_to movies_url,
                alert:
                  "'#{@movie.title}' was just deleted! Hope you meant to do that..."
  end

  private

  def set_movie
    @movie = Movie.find_by!(slug: params[:id])
  end

  def movie_params
    params
      .require(:movie)
      .permit(
        :title,
        :description,
        :released_on,
        :rating,
        :total_gross,
        :director,
        :duration,
        :image_file_name,
        genre_ids: []
      )
  end

  def movies_filter
    if params[:filter].in? %w[upcoming recent released flops hits]
      params[:filter]
    else
      :released
    end
  end
end
