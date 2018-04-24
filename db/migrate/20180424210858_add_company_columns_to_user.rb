class AddCompanyColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :company_name, :string
    add_column :users, :company_city, :string
    add_column :users, :company_address, :string
    add_column :users, :company_regitration_number, :string
    add_column :users, :company_phone, :string
  end
end
