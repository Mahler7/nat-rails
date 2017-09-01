class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id] #||= takes @current_user, or if not executes User.find
  end

  def logged_in?
    !!current_user #turns current user into true false value
  end

  def authenticate_user!
    redirect_to '/login' unless current_user
  end

end
