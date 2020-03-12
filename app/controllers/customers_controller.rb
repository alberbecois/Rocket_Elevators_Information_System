class CustomersController < InheritedResources::Base

  private

    def customer_params
      params.require(:customer).permit(:business, :headquarter_address, :contact_full_name, :contact_phone, :contact_email, :business_description, :tech_full_name, :tech_phone, :tech_email, :user_id)
    end

end
