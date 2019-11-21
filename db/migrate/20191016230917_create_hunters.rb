class CreateHunters < ActiveRecord::Migration[6.0]
  def change
    create_table :hunters do |t|
      t.string :name
      t.text :description
      t.string :cpf
      t.string :cnpj
      t.string :email
      t.string :phone
      t.string :link1

      t.timestamps
    end
  end
end
