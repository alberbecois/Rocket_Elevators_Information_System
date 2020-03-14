class ElevatorsController < InheritedResources::Base

  private

    def elevator_params
      params.require(:elevator).permit(:serial_number, :model, :elevatory_type, :status, :start_date, :last_check, :certificate, :information, :notes, :column_id)
    end

end
