json.extract! user, :id, :email, :encrypted_password, :first_name, :last_name, :phone, :business, :created_at, :updated_at
json.url user_url(user, format: :json)
