class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :security_redirect
  # protect_from_forgery with: :exception, prepend: :true

  def welcome
  end

  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def security_redirect
    redirect_to current_user, notice: "Please only make changes to your profile."
  end
end
