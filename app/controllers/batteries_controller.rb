class BatteriesController < InheritedResources::Base

  private

    def battery_params
      params.require(:battery).permit(:battery_type, :status, :commissioning_date, :last_inspection_date, :operation_certificate, :information, :notes, :building_id, :employee_id)
    end

end
