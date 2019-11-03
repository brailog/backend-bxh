class AddEmailToCompany < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :email, :string
  end
end
