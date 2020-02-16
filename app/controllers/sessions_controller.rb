class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      
      redirect_to user_path(user), notice: "Logged in!"
    else
      redirect_to login_path, notice: "Please, try again."
    end
  end

  def auth_create
    if auth['uid']
      user = User.find_or_create_by(uid: auth['uid']) do |u|
        u.first_name = auth['info']['name'].split[0]
        u.last_name = auth['info']['name'].split[-1]
      end

      session[:user_id] = user.id

      redirect_to user_path(user)
    else
      redirect_to login_path, notice: "Please, try again."
    end
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