json.array!(@support_cases) do |support_case|
  json.extract! support_case, :id, :name, :desc, :stage, :solution, :status, :close_date
  json.url support_case_url(support_case, format: :json)
end
