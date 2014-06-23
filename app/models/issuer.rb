# == Schema Information
#
# Table name: issuers
#
#  id          :integer          not null, primary key
#  ISSUER_ID   :string(255)
#  SendingTime :datetime
#  created_at  :datetime
#  updated_at  :datetime
#

class Issuer < ActiveRecord::Base
end
