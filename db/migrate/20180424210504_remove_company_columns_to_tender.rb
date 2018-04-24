class RemoveCompanyColumnsToTender < ActiveRecord::Migration[5.1]
  def change
  	remove_column :tenders, :company_name
  	remove_column :tenders, :company_city
  	remove_column :tenders, :company_address
  	remove_column :tenders, :company_regitration_number
  	remove_column :tenders, :company_phone
  end
end
