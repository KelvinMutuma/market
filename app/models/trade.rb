# == Schema Information
#
# Table name: trades
#
#  id           :integer          not null, primary key
#  scaffold     :string(255)
#  SecurityID   :string(255)
#  BOARD_ID     :string(255)
#  Price        :float
#  Quantity     :float
#  TransactTime :time
#  HI_TRADE     :integer
#  LO_TRADE     :integer
#  DATE         :date
#  SendingTime  :datetime
#  created_at   :datetime
#  updated_at   :datetime
#

class Trade < ActiveRecord::Base
end
