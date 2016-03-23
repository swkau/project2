json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :type, :desc, :start, :end, :status
  json.url activity_url(activity, format: :json)
end
