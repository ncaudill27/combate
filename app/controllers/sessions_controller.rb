class SessionsController < ApplicationController

  def new
  end

  def create
    byebug
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      
      redirect_to user_path(user), notice: "Logged in!"
    else
      redirect_to login_path, notice: "Please, try again."
    end
  end

  def auth_create
    
  end

  def destroy
    session.delete :user_id

    redirect_to root_path, notice: 'Logged out!'
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end