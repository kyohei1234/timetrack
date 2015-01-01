json.array!(@records) do |record|
  json.extract! record, :track_id, :start_time, :end_time
  json.url record_url(record, format: :json)
end