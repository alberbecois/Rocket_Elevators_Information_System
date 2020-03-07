class CustomersController < ApplicationController
    skip_before_action :verify_authenticity_token
    wrap_parameters :customer, include: [:fname, :lname, :email, :bname, :primary, :secondary]
    def index
        @customers = Customer.order('id');
        render json: {status: 'SUCCESS', message: 'Loaded customers', data:customers},status:ok
    end
    def create
        @query = Customer.where(:email === params[:email])
        if @query.empty? == true
            redirect_to action: "new", status: 301
        else
            @theid = @query.first.id
            render json: {status: 'SUCCESS', message: 'Existing customer', theid:@theid}
        end
    end
    def new
        customer = Customer.new(customer_params)
        render json: {status: 'SUCCESS', message: 'New customer', theid: Customer.last.id}
    end

    def customer_params
        params.permit(:fname, :lname, :email, :bname, :primary, :secondary)
    end
end
