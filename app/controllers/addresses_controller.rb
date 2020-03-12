class AddressesController < InheritedResources::Base

  private

    def address_params
      params.require(:address).permit(:address_type, :address, :appt_no, :city, :post_code, :country, :notes)
    end

end
