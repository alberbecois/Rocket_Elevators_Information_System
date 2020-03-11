class CustomersController < ApplicationController
    skip_before_action :verify_authenticity_token
    wrap_parameters format: [:json, :xml, :url_encoded_form, :multipart_form]
   
    def create
        @query = Customer.where(email: params[:customer][:email]).take
        if @query == nil
            p = params[:customer].permit!
            Customer.create(p)
            render json: {status: 'SUCCESS', message: 'New customer', theid: Customer.last.id}
        else
            @theid = @query.id
            render json: {status: 'SUCCESS', message: 'Existing customer', theid: @theid}
        end
    end
end
