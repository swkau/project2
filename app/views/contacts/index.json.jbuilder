json.array!(@contacts) do |contact|
  json.extract! contact, :id, :first_name, :last_name, :desc, :job_position, :role, :email, :phone, :mobile, :address1, :address2, :state, :country, :status
  json.url contact_url(contact, format: :json)
end
