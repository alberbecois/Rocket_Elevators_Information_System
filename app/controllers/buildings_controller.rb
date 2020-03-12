class BuildingsController < InheritedResources::Base

  private

    def building_params
      params.require(:building).permit(:admin_full_name, :admin_email, :admin_phone, :tech_full_name, :tech_email, :tech_phone, :customer_id, :address_id)
    end

end
