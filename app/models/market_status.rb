# == Schema Information
#
# Table name: market_statuses
#
#  id          :integer          not null, primary key
#  STATUS      :string(255)
#  SendingTime :datetime
#  created_at  :datetime
#  updated_at  :datetime
#

class MarketStatus < ActiveRecord::Base
end
