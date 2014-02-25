json.array!(@levels) do |level|
  json.extract! level, :id, :level, :game_type_id
  json.url level_url(level, format: :json)
end
