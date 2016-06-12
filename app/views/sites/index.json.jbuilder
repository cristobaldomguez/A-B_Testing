json.array!(@sites) do |site|
  json.extract! site, :id, :domain, :user_id
  json.url site_url(site, format: :json)
end
