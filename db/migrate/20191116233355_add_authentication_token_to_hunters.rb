class AddAuthenticationTokenToHunters < ActiveRecord::Migration[6.0]
  def change
    add_column :hunters, :authentication_token, :string, limit: 30
    add_index :hunters, :authentication_token, unique: true
  end
end
