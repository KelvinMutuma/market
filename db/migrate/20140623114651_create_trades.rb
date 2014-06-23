class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.string :scaffold
      t.string :SecurityID
      t.string :BOARD_ID
      t.float :Price
      t.float :Quantity
      t.time :TransactTime
      t.integer :HI_TRADE
      t.integer :LO_TRADE
      t.date :DATE
      t.datetime :SendingTime

      t.timestamps
    end
  end
end
