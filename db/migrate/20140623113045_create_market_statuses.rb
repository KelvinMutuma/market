class CreateMarketStatuses < ActiveRecord::Migration
  def change
    create_table :market_statuses do |t|
      t.string :STATUS
      t.datetime :SendingTime

      t.timestamps
    end
  end
end
