class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :BOARD_ID
      t.string :CURRENT_SESSION_ID
      t.datetime :SendingTime

      t.timestamps
    end
  end
end
