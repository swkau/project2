json.array!(@role_accesses) do |role_access|
  json.extract! role_access, :id, :name, :lead_c, :lead_r, :lead_u, :lead_d, :account_c, :account_r, :account_u, :account_d, :opportunity_c, :opportunity_r, :opportunity_u, :opportunity_d, :contact_c, :contact_r, :contact_u, :contact_d, :case_c, :case_r, :case_u, :case_d
  json.url role_access_url(role_access, format: :json)
end
