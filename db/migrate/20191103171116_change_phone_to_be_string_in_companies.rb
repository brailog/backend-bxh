class ChangePhoneToBeStringInCompanies < ActiveRecord::Migration[6.0]
  def change
    change_column :companies, :phone, :string
    change_column :companies, :cnpj, :string
  end
end
