json.array!(@indices) do |index|
  json.extract! index, :id, :INDEX_ID, :INDEX_VALUE, :INDEX_HIGH_VALUE, :INDEX_LOW_VALUE, :MARKET_TYPE, :SendingTime
  json.url index_url(index, format: :json)
end
