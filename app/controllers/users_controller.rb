class UsersController < ApplicationController
  before_action :set_user, only: [:new, :show, :edit, :update, :destroy]
  def new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    
    redirect_to @user
  end

  def show
    @events = @user.registered_events
  end

  def edit
    if current_user.id != @user.id
      security_redirect
    end
  end

  def update
    if current_user.id == @user.id
      @user.update(user_params)
      redirect_to @user
    else
      security_redirect
    end
  end

  def destroy
    if current_user.id == @user.id
      @user.destroy
      redirect_to tournaments_path
    else
      security_redirect
    end
  end

  private

  def set_user
    if params[:id]
      @user = User.find_by_id(params[:id])
    else
      @user = User.new
    end
  end

  def user_params
    params.require(:user).permit(
                          :first_name,
                          :last_name,
                          :email,
                          :password,
                          :password_confirmation,
                          :gi_skill,
                          :nogi_skill,
                          :weight
                        )
  end
end
