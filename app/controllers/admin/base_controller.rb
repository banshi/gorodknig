class Admin::BaseController < ActionController::Base
  layout 'application'

  before_action :configure_permitted_parameters, if: :devise_controller?

  before_filter :authenticate_admin!

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_in) { |a| a.permit(:login, :username, :email, :password, :remember_me) }
    end
end