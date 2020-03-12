class BuildingDetailsController < InheritedResources::Base

  private

    def building_detail_params
      params.require(:building_detail).permit(:information_key, :value, :building_id)
    end

end
