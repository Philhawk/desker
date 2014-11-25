class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate

  private
  def authenticate
    @current_user = User.where(:id => session[:user_id]).first
    session[:user_id] = nil unless @current_user.present?
  end 
  def check_if_logged_in
    redirect_to(login_path) if @current_user.nil?
  end

end
