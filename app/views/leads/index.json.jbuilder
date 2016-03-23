json.array!(@leads) do |lead|
  json.extract! lead, :id, :name, :desc, :source, :contact_name, :company_name, :contact_email, :phone, :qualified
  json.url lead_url(lead, format: :json)
end
