class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
  
    
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:phone, :role, :name, :password, :email, :password_confirmation])
      devise_parameter_sanitizer.permit(:sign_in, keys: [:phone, :role, :name, :password, :email, :password_confirmation])
    end

end
