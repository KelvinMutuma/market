class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.string :SecurityID
      t.date :IssueDate
      t.string :ISIN
      t.integer :QUANTITY_ISSUED
      t.float :PAR_VALUE
      t.float :ISSUED_PRICE
      t.float :LAST_TRADED_PRICE
      t.float :WTD_HI_PRICE
      t.float :MTD_HI_PRICE
      t.float :YTD_HI_PRICE
      t.float :P12_HI_PRICE
      t.float :ALL_HI_PRICE
      t.float :ALL_LO_PRICE
      t.float :WTD_LO_PRICE
      t.float :MTD_LO_PRICE
      t.float :YTD_LO_PRICE
      t.float :P12_LO_PRICE
      t.integer :TDY_SHARE_VOL
      t.integer :WTD_SHARE_VOL
      t.integer :MTD_SHARE_VOL
      t.integer :YTD_SHARE_VOL
      t.integer :P12_SHARE_VOL
      t.integer :TDY_TRADE_VOL
      t.integer :WTD_TRADE_VOL
      t.integer :MTD_TRADE_VOL
      t.integer :YTD_TRADE_VOL
      t.integer :P12_TRADE_VOL
      t.float :TDY_TURNOVER
      t.float :WTD_TURNOVER
      t.float :MTD_TURNOVER
      t.float :YTD_TURNOVER
      t.float :P12_TURNOVER
      t.float :PREVIOUS_CLOSE
      t.float :FOREIGN_HOLDINGS
      t.integer :XC
      t.integer :XD
      t.integer :XR
      t.float :FOREIGN_PERCENTAGE
      t.date :DATE
      t.integer :HI_TRADE
      t.integer :LO_TRADE
      t.float :CLOSING_PRICE
      t.datetime :SendingTime

      t.timestamps
    end
  end
end
