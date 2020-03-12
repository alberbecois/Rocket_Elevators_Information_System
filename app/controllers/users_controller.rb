class UsersController < InheritedResources::Base

  private

    def user_params
      params.require(:user).permit(:email, :encrypted_password, :first_name, :last_name, :phone, :business)
    end

end
