json.array!(@trades) do |trade|
  json.extract! trade, :id, :scaffold, :SecurityID, :BOARD_ID, :Price, :Quantity, :TransactTime, :HI_TRADE, :LO_TRADE, :DATE, :SendingTime
  json.url trade_url(trade, format: :json)
end
