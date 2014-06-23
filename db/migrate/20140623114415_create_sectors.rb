class CreateSectors < ActiveRecord::Migration
  def change
    create_table :sectors do |t|
      t.string :SECTOR_ID
      t.integer :SECT_TURNOVER_TDY
      t.integer :SECT_VOLUME_TDY
      t.integer :SECT_TRADES_TDY
      t.datetime :SendingTime

      t.timestamps
    end
  end
end
