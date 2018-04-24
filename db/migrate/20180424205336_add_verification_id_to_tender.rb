class AddVerificationIdToTender < ActiveRecord::Migration[5.1]
  def change
    add_column :tenders, :verification_id, :string
  end
end
