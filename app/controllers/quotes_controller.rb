class QuotesController < InheritedResources::Base
  skip_before_action :verify_authenticity_token
  wrap_parameters format: [:json, :xml, :url_encoded_form, :multipart_form]

  def create
    p = JSON.parse(params).permit!
    Quote.create(p)
    render json: {status: 'SUCCESS', message: 'New quote created', theid: Quote.last.id}
  end

  def new
  end

  private

    def quote_params
      params.require(:quote).permit(:business, :fullname, :email, :build_type, :product_line, :nb_cages, :nb_appartment, :nb_floors, :nb_base, :nb_occupants, :elevator_units, :installation_fe, :p_line_selection, :sum_total)
    end

end
