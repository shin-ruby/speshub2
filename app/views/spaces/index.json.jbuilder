json.array!(@spaces) do |space|
  json.extract! space, :id, :title, :content, :detailed_choose, :price_hour, :price_day, :price_month, :price_year
  json.url space_url(space, format: :json)
end
