class CreateTenders < ActiveRecord::Migration[5.1]
  def change
    create_table :tenders do |t|
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.string :title
      t.string :location
      t.date :install_date
      t.datetime :tendering_end_date
      t.string :description
      t.boolean :electrican
      t.integer :no_of_electricans
      t.boolean :roofer
      t.integer :no_of_roofers
      t.integer :status
      t.timestamps
    end
  end
end
