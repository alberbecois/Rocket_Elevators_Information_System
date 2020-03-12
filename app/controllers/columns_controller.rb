class ColumnsController < InheritedResources::Base

  private

    def column_params
      params.require(:column).permit(:column_type, :floors, :column_status, :information, :notes, :battery_id)
    end

end
