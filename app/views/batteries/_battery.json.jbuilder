json.extract! battery, :id, :battery_type, :status, :commissioning_date, :last_inspection_date, :operation_certificate, :information, :notes, :building_id, :employee_id, :created_at, :updated_at
json.url battery_url(battery, format: :json)
