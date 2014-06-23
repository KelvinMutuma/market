# == Schema Information
#
# Table name: indices
#
#  id               :integer          not null, primary key
#  INDEX_ID         :string(255)
#  INDEX_VALUE      :float
#  INDEX_HIGH_VALUE :float
#  INDEX_LOW_VALUE  :float
#  MARKET_TYPE      :string(255)
#  SendingTime      :datetime
#  created_at       :datetime
#  updated_at       :datetime
#

class Index < ActiveRecord::Base
end
