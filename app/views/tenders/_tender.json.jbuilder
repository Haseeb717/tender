json.extract! tender, :id, :user_id, :category_id, :name, :company_name, :company_address, :company_city, :company_regitration_number, :company_phone, :scope_of_work, :project_location_city, :project_location_country, :bid_start_date, :bid_expiry_date, :contact_phone, :phone_fax, :contact_address, :description, :project_start_date, :project_completion_date, :created_at, :updated_at
json.url tender_url(tender, format: :json)
