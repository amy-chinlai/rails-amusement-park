class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def verify_login
    redirect_to '/' unless User.find_by(id: session[:user_id])
  end

  def current_user
    @user = User.find_by(id: session[:user_id])
  end


end


