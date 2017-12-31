class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # available in any controllers
  include SessionsHelper
end
