json.array!(@hows) do |how|
  json.extract! how, :title, :description
  json.url how_url(how, format: :json)
end
