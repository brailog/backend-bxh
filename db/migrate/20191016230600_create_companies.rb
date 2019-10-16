class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.integer :cnpj
      t.integer :phone

      t.timestamps
    end
  end
end
