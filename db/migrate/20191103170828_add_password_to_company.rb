class AddPasswordToCompany < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :password, :string
  end
end
