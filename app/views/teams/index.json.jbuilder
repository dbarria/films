json.array!(@teams) do |team|
  json.extract! team, :id, :movie_id, :dude_id, :role_id
  json.url team_url(team, format: :json)
end
