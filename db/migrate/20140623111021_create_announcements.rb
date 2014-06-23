class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :MSG_NAME
      t.string :MESSAGE
      t.string :SUBJECT
      t.datetime :SendingTime

      t.timestamps
    end
  end
end
