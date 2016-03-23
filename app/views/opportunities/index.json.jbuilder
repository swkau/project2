json.array!(@opportunities) do |opportunity|
  json.extract! opportunity, :id, :name, :desc, :stage, :value, :status
  json.url opportunity_url(opportunity, format: :json)
end
