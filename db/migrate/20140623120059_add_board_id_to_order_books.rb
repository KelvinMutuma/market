class AddBoardIdToOrderBooks < ActiveRecord::Migration
  def change
    add_column :order_books, :BOARD_ID, :string, after: :SecurityID
  end
end
