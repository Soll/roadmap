class ApplicationController < ActionController::Base
  helper_method :params
  protect_from_forgery with: :exception
end
