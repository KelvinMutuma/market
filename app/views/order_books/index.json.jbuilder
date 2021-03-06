json.array!(@order_books) do |order_book|
  json.extract! order_book, :id, :SecurityID, :TOTAL_BIDS, :TOTAL_ASKS, :BID1_PRICE, :BID2_PRICE, :BID3_PRICE, :BID4_PRICE, :BID5_PRICE, :BID1_QTY, :BID2_QTY, :BID3_QTY, :BID4_QTY, :BID5_QTY, :BID1_SPLITS, :BID2_SPLITS, :BID3_SPLITS, :BID4_SPLITS, :BID5_SPLITS, :ASK1_PRICE, :ASK2_PRICE, :ASK3_PRICE, :ASK4_PRICE, :ASK5_PRICE, :ASK1_QTY, :ASK2_QTY, :ASK3_QTY, :ASK4_QTY, :ASK5_QTY, :ASK1_SPLITS, :ASK2_SPLITS, :ASK3_SPLITS, :ASK4_SPLITS, :ASK5_SPLITS, :Price, :Quantity, :MBO_Action, :Buy_Sell, :Priority_Sequence, :SendingTime
  json.url order_book_url(order_book, format: :json)
end
