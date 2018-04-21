class CreateTenders < ActiveRecord::Migration[5.1]
  def change
    create_table :tenders do |t|
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.string :name
      t.string :company_name
      t.string :company_address
      t.string :company_city
      t.string :company_regitration_number
      t.string :company_phone
      t.text :scope_of_work
      t.string :project_location_city
      t.string :project_location_country
      t.date :bid_start_date
      t.date :bid_expiry_date
      t.string :contact_phone
      t.string :contact_fax
      t.string :contact_address
      t.string :description
      t.date :project_start_date
      t.date :project_completion_date

      t.timestamps
    end
  end
end
