json.array!(@notifies) do |notify|
  json.extract! notify, :id, :title, :description, :user_id
  json.url notify_url(notify, format: :json)
end
