json.array!(@accounts) do |account|
  json.extract! account, :id, :name, :desc, :industry, :relationship_type, :company_size, :company_email, :company_phone, :company_fax, :company_address1, :company_address2, :company_state, :company_country, :status
  json.url account_url(account, format: :json)
end
