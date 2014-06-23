# == Schema Information
#
# Table name: sectors
#
#  id                :integer          not null, primary key
#  SECTOR_ID         :string(255)
#  SECT_TURNOVER_TDY :integer
#  SECT_VOLUME_TDY   :integer
#  SECT_TRADES_TDY   :integer
#  SendingTime       :datetime
#  created_at        :datetime
#  updated_at        :datetime
#

class Sector < ActiveRecord::Base
end
