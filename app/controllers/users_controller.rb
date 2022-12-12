class UsersController < ApplicationController
  before_action :require_signin, except: %i[new create]
  before_action :require_correct_user, only: %i[edit update destroy]

  def index
    @users = User.non_admin
  end

  def show
    @user = User.find_by(username: params[:id])
    @reviews = @user.reviews
    @favorite_movies = @user.favorite_movies
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to(user_url(@user), notice: 'Thanks for signing up!')
    else
      render(:new, status: :unprocessable_entity)
    end
  end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to(user_path(@user), notice: 'Account updated!')
    else
      render(:edit, status: :unprocessable_entity)
    end
  end

  def destroy
    @user.destroy
    session[:user_id] = nil
    redirect_to(movies_url, status: :see_other, alert: 'User account deleted!')
  end

  private

  def user_params
    params
      .require(:user)
      .permit(:username, :name, :email, :password, :password_confirmation)
  end

  def require_correct_user
    @user = User.find_by(username: params[:id])
    redirect_to(root_url, status: :see_other) unless current_user?(@user)
  end
end
