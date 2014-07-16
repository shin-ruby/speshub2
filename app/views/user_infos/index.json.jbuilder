json.array!(@user_infos) do |user_info|
  json.extract! user_info, :id, :name, :phone
  json.url user_info_url(user_info, format: :json)
end
