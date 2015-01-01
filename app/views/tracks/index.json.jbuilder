json.array!(@tracks) do |track|
  json.extract! track, :user_id, :word
  json.url track_url(track, format: :json)
end