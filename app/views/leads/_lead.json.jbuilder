json.extract! lead, :id, :full_name, :business, :email, :phone, :project_name, :description, :department, :message, :file, :created_at, :updated_at
json.url lead_url(lead, format: :json)
