class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.string :cnpj
      t.string :phone

      t.timestamps
    end
  end
end