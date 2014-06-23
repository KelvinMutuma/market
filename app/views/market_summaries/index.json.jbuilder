json.array!(@market_summaries) do |market_summary|
  json.extract! market_summary, :id, :TRADE_VOLUME, :SHARE_VOLUME, :MARKET_TYPE, :SendingTime
  json.url market_summary_url(market_summary, format: :json)
end
