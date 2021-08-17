class ApplicationController < ActionController::Base
    before_action :configure_sign_up, if: :devise_controller?
    def configure_sign_up
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end

    def authorize_admin!
        redirect_to root_path unless current_user.admin
    end
end
