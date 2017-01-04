json.array!(@gvg_cores) do |gvg_core|
  json.extract! gvg_core, :id, :name, :description, :recruiting, :recruiting_description, :avatar, :user_id
  json.url gvg_core_url(gvg_core, format: :json)
end
