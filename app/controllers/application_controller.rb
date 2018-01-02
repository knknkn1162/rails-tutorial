class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # available in any controllers
  include SessionsHelper

  private
  # defore action
  def logged_in_user
    if !logged_in?
      store_location
      flash[:danger] = 'Please log in.'
      redirect_to login_url
    end
  end
end
