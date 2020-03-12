class LeadsController < InheritedResources::Base

  private

    def lead_params
      params.require(:lead).permit(:full_name, :business, :email, :phone, :project_name, :description, :department, :message, :file)
    end

end
