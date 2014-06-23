# == Schema Information
#
# Table name: announcements
#
#  id          :integer          not null, primary key
#  MSG_NAME    :string(255)
#  MESSAGE     :string(255)
#  SUBJECT     :string(255)
#  SendingTime :datetime
#  created_at  :datetime
#  updated_at  :datetime
#

class Announcement < ActiveRecord::Base
end
