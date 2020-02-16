class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    return login_path, flash[:notice] = "Try again." unless user.authenticate(params[:password])
    session[:user_id] = user.id
    # if user && user.authenticate(params[:password])
    #   session[:user_id] = user.id
      
    #   redirect_to root_path, notice: "Logged in!"
    # else
    #   #TODO Flash error messages
    #   redirect_to login_path
    # end
  end

  def destroy
    session.delete :user_id

    redirect_to root_path, notice: 'Logged out!'
  end
end