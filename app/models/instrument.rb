# == Schema Information
#
# Table name: instruments
#
#  id                 :integer          not null, primary key
#  SecurityID         :string(255)
#  IssueDate          :date
#  ISIN               :string(255)
#  QUANTITY_ISSUED    :integer
#  PAR_VALUE          :float
#  ISSUED_PRICE       :float
#  LAST_TRADED_PRICE  :float
#  WTD_HI_PRICE       :float
#  MTD_HI_PRICE       :float
#  YTD_HI_PRICE       :float
#  P12_HI_PRICE       :float
#  ALL_HI_PRICE       :float
#  ALL_LO_PRICE       :float
#  WTD_LO_PRICE       :float
#  MTD_LO_PRICE       :float
#  YTD_LO_PRICE       :float
#  P12_LO_PRICE       :float
#  TDY_SHARE_VOL      :integer
#  WTD_SHARE_VOL      :integer
#  MTD_SHARE_VOL      :integer
#  YTD_SHARE_VOL      :integer
#  P12_SHARE_VOL      :integer
#  TDY_TRADE_VOL      :integer
#  WTD_TRADE_VOL      :integer
#  MTD_TRADE_VOL      :integer
#  YTD_TRADE_VOL      :integer
#  P12_TRADE_VOL      :integer
#  TDY_TURNOVER       :float
#  WTD_TURNOVER       :float
#  MTD_TURNOVER       :float
#  YTD_TURNOVER       :float
#  P12_TURNOVER       :float
#  PREVIOUS_CLOSE     :float
#  FOREIGN_HOLDINGS   :float
#  XC                 :integer
#  XD                 :integer
#  XR                 :integer
#  FOREIGN_PERCENTAGE :float
#  DATE               :date
#  HI_TRADE           :integer
#  LO_TRADE           :integer
#  CLOSING_PRICE      :float
#  SendingTime        :datetime
#  created_at         :datetime
#  updated_at         :datetime
#

class Instrument < ActiveRecord::Base
end
