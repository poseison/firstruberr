json.array!(@myposts) do |mypost|
  json.extract! mypost, :id, :mytext
  json.url mypost_url(mypost, format: :json)
end
