class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :company_name, :string
    add_column :users, :company_phone, :string
    add_column :users, :company_address, :string
  end
end
