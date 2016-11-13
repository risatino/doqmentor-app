json.extract! lead, :id, :firstname, :lastname, :email, :phone, :company, :created_at, :updated_at
json.url lead_url(lead, format: :json)