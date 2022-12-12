class SessionsController < ApplicationController
  def new; end

  def create
    user = find_user_by_email_or_username

    if authenticated?(user)
      session[:user_id] = user.id
      redirect_to(
        session[:intended_url] || user,
        notice: "Welcome back, #{user.name}"
      )
      session[:intended_url] = nil
    else
      flash.now[:alert] = 'Invalid username or password.'
      render :new, status: :unprocessable_entity
    end
  end

  def find_user_by_email_or_username
    email_or_username = params[:email_or_username]

    User.find_by(email: email_or_username) ||
      User.find_by(username: email_or_username)
  end

  def authenticated?(user)
    user&.authenticate(params[:password])
  end

  def destroy
    session[:user_id] = nil
    redirect_to(
      movies_url,
      status: :see_other,
      notice: "You're now signed out!"
    )
  end
end
