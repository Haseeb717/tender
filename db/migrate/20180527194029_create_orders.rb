class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :tender, foreign_key: true
      t.references :user, foreign_key: true
      t.references :bid, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
