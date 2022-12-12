class ReviewsController < ApplicationController
  before_action :require_signin, except: :index
  before_action :set_movie

  def index
    @reviews = @movie.reviews
  end

  def new
    @review = Review.new
  end

  def create
    @review = @movie.reviews.new(review_params)
    @review.user = current_user

    if @review.save
      redirect_to(movie_reviews_url(@movie), notice: 'Thanks for reviewing!')
    else
      render(:new, status: :unprocessable_entity)
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to(movie_reviews_url, notice: 'Review updated')
    else
      render(:edit, status: :unprocessable_entity)
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to movie_reviews_url(@movie),
                alert: "Review by #{@review.user.name} deleted!"
  end

  private

  def review_params
    params.require(:review).permit(:comment, :stars)
  end

  def set_movie
    @movie = Movie.find_by!(slug: params[:movie_id])
  end
end
