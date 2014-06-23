class CreateIndices < ActiveRecord::Migration
  def change
    create_table :indices do |t|
      t.string :INDEX_ID
      t.float :INDEX_VALUE
      t.float :INDEX_HIGH_VALUE
      t.float :INDEX_LOW_VALUE
      t.string :MARKET_TYPE
      t.datetime :SendingTime

      t.timestamps
    end
  end
end
