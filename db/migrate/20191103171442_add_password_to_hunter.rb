class AddPasswordToHunter < ActiveRecord::Migration[6.0]
  def change
    add_column :hunters, :password, :string
  end
end
