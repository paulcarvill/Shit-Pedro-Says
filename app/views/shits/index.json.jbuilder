json.array!(@shits) do |shit|
  json.extract! shit, :content
  json.url shit_url(shit, format: :json)
end