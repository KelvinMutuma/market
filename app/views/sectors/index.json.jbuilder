json.array!(@sectors) do |sector|
  json.extract! sector, :id, :SECTOR_ID, :SECT_TURNOVER_TDY, :SECT_VOLUME_TDY, :SECT_TRADES_TDY, :SendingTime
  json.url sector_url(sector, format: :json)
end
