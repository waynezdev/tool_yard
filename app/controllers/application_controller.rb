class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?

    def after_sign_in_path_for(resource)

            if current_user.seller? && current_user.seller == nil
                new_seller_path

            else

                root_path
            end

         end

    protected

         def configure_permitted_parameters
              devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :account_type, :mobile, :email, :password, :password_confirmation)}

              devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name,:account_type, :mobile, :email, :password, :current_password)}


         end

       


end
