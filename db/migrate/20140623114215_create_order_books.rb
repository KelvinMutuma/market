class CreateOrderBooks < ActiveRecord::Migration
  def change
    create_table :order_books do |t|
      t.string :SecurityID
      t.integer :TOTAL_BIDS
      t.integer :TOTAL_ASKS
      t.float :BID1_PRICE
      t.float :BID2_PRICE
      t.float :BID3_PRICE
      t.float :BID4_PRICE
      t.float :BID5_PRICE
      t.integer :BID1_QTY
      t.integer :BID2_QTY
      t.integer :BID3_QTY
      t.integer :BID4_QTY
      t.integer :BID5_QTY
      t.integer :BID1_SPLITS
      t.integer :BID2_SPLITS
      t.integer :BID3_SPLITS
      t.integer :BID4_SPLITS
      t.integer :BID5_SPLITS
      t.float :ASK1_PRICE
      t.float :ASK2_PRICE
      t.float :ASK3_PRICE
      t.float :ASK4_PRICE
      t.float :ASK5_PRICE
      t.integer :ASK1_QTY
      t.integer :ASK2_QTY
      t.integer :ASK3_QTY
      t.integer :ASK4_QTY
      t.integer :ASK5_QTY
      t.integer :ASK1_SPLITS
      t.integer :ASK2_SPLITS
      t.integer :ASK3_SPLITS
      t.integer :ASK4_SPLITS
      t.integer :ASK5_SPLITS
      t.float :Price
      t.integer :Quantity
      t.integer :MBO_Action
      t.string :Buy_Sell
      t.float :Priority_Sequence
      t.datetime :SendingTime

      t.timestamps
    end
  end
end
