class CreateIssuers < ActiveRecord::Migration
  def change
    create_table :issuers do |t|
      t.string :ISSUER_ID
      t.datetime :SendingTime

      t.timestamps
    end
  end
end
