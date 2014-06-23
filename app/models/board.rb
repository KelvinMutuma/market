# == Schema Information
#
# Table name: boards
#
#  id                 :integer          not null, primary key
#  BOARD_ID           :string(255)
#  CURRENT_SESSION_ID :string(255)
#  SendingTime        :datetime
#  created_at         :datetime
#  updated_at         :datetime
#

class Board < ActiveRecord::Base
end
