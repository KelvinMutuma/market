# == Schema Information
#
# Table name: order_books
#
#  id                :integer          not null, primary key
#  SecurityID        :string(255)
#  BOARD_ID          :string(255)
#  TOTAL_BIDS        :integer
#  TOTAL_ASKS        :integer
#  BID1_PRICE        :float
#  BID2_PRICE        :float
#  BID3_PRICE        :float
#  BID4_PRICE        :float
#  BID5_PRICE        :float
#  BID1_QTY          :integer
#  BID2_QTY          :integer
#  BID3_QTY          :integer
#  BID4_QTY          :integer
#  BID5_QTY          :integer
#  BID1_SPLITS       :integer
#  BID2_SPLITS       :integer
#  BID3_SPLITS       :integer
#  BID4_SPLITS       :integer
#  BID5_SPLITS       :integer
#  ASK1_PRICE        :float
#  ASK2_PRICE        :float
#  ASK3_PRICE        :float
#  ASK4_PRICE        :float
#  ASK5_PRICE        :float
#  ASK1_QTY          :integer
#  ASK2_QTY          :integer
#  ASK3_QTY          :integer
#  ASK4_QTY          :integer
#  ASK5_QTY          :integer
#  ASK1_SPLITS       :integer
#  ASK2_SPLITS       :integer
#  ASK3_SPLITS       :integer
#  ASK4_SPLITS       :integer
#  ASK5_SPLITS       :integer
#  Price             :float
#  Quantity          :integer
#  MBO_Action        :integer
#  Buy_Sell          :string(255)
#  Priority_Sequence :float
#  SendingTime       :datetime
#  created_at        :datetime
#  updated_at        :datetime
#

class OrderBook < ActiveRecord::Base
end
