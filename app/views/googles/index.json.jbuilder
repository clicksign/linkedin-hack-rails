json.array!(@googles) do |google|
  json.extract! google, :id, :couch_id, :query, :title, :link, :description
  json.url google_url(google, format: :json)
end
