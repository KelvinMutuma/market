class CreateMarketSummaries < ActiveRecord::Migration
  def change
    create_table :market_summaries do |t|
      t.integer :TRADE_VOLUME
      t.integer :SHARE_VOLUME
      t.string :MARKET_TYPE
      t.datetime :SendingTime

      t.timestamps
    end
  end
end
