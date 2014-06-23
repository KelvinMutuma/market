# == Schema Information
#
# Table name: market_summaries
#
#  id           :integer          not null, primary key
#  TRADE_VOLUME :integer
#  SHARE_VOLUME :integer
#  MARKET_TYPE  :string(255)
#  SendingTime  :datetime
#  created_at   :datetime
#  updated_at   :datetime
#

class MarketSummary < ActiveRecord::Base
end
