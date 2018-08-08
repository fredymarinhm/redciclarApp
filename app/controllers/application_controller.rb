class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_devise_params, if: :devise_controller?
  $URLSERVER = ''
  before_action :thatEnvirnoment
  

  def configure_devise_params
    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:name, :email, :password, :password_confirmation)
    end
  end

  def thatEnvirnoment
    if Rails.env.production?
      $URLSERVER = 'https://redciclar.herokuapp.com/';
    else
      $URLSERVER = 'http://localhost:3000/';
    end
  end
end