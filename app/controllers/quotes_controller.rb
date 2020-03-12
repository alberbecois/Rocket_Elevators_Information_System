class QuotesController < InheritedResources::Base

  private

    def quote_params
      params.require(:quote).permit(:business, :fullname, :email, :build_type, :product_line, :nb_cages, :nb_appartment, :nb_floors, :nb_base, :nb_occupants, :elevator_units, :installation_fe, :p_line_selection, :sum_total)
    end

end
