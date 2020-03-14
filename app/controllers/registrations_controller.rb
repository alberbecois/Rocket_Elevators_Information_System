class RegistrationsController < Devise::RegistrationsController

    before_action :authenticate_user!

    def index
      @user = current_user
    end


    private

    def sign_up_params
        params.require(:user).permit(
            :email, 
            :password, 
            :password_confirmation,
            :username,
            :firstname,
            :lastname
            )
    end

    def account_update_params
        params.require(:user).permit(
            :email, 
            :password, 
            :password_confirmation, 
            :current_password, 
            :username,
            :firstname,
            :lastname
            )
    end
end  