json.array!(@sets_and_reps) do |sets_and_rep|
  json.extract! sets_and_rep, :id
  json.url sets_and_rep_url(sets_and_rep, format: :json)
end
