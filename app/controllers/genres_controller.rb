class GenresController < ApplicationController
  before_action :require_signin, except: %i[index show]
  before_action :require_admin, except: %i[index show]
  before_action :set_genre, only: %i[show edit update destroy]

  def index; end

  def show; end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to(genres_url, notice: 'Genre successfully added')
    else
      render(:new, status: :unprocessable_entity)
    end
  end

  def edit; end

  def update
    if @genre.update(genre_params)
      redirect_to(@genre, notice: 'Edited!')
    else
      render(:edit, status: :unprocessable_entity)
    end
  end

  def destroy
    @genre.destroy
    redirect_to(genres_url, alert: "Deleted genre '#{@genre.name}'")
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end

  def set_genre
    @genre = Genre.find_by(slug: params[:id])
  end
end
