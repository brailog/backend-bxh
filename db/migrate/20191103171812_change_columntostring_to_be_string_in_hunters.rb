class ChangeColumntostringToBeStringInHunters < ActiveRecord::Migration[6.0]
  def change
    change_column :hunters, :phone, :string
    # rename_column :hunters, :cnpj, :cpf
    change_column :hunters, :cpf, :string
  end
end
