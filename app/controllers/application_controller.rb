class ApplicationController < ActionController::Base    

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    attributes = [:name, :nickname, :phone, :birth_date ,:gender, :country, :bio, :avatar]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end
end