json.extract! customer, :id, :business, :headquarter_address, :contact_full_name, :contact_phone, :contact_email, :business_description, :tech_full_name, :tech_phone, :tech_email, :user_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
