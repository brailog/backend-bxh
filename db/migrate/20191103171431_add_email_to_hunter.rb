class AddEmailToHunter < ActiveRecord::Migration[6.0]
  def change
    add_column :hunters, :email, :string
  end
end
