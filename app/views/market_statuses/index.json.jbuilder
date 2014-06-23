json.array!(@market_statuses) do |market_status|
  json.extract! market_status, :id, :STATUS, :SendingTime
  json.url market_status_url(market_status, format: :json)
end
