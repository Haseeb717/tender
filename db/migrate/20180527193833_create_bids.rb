class CreateBids < ActiveRecord::Migration[5.1]
  def change
    create_table :bids do |t|
      t.references :tender, foreign_key: true
      t.references :user, foreign_key: true
      t.string :price
      t.string :time_estimate
      t.string :mobile_no

      t.timestamps
    end
  end
end
